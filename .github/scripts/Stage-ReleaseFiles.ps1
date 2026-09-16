<#
.SYNOPSIS
    Формирует staging-каталог с предсказуемой структурой релизного архива.

.DESCRIPTION
    Итоговая структура staging соответствует структуре релизного ZIP и 7z:

        <SolutionName>/
            <FirstProjectName>/
                <все файлы всех publish-проектов>
            <содержимое assets с сохранением структуры>
        <Product>_<Version>.md

    Имя решения берётся из PRODUCT. Имя каталога проекта определяется
    первым проектом из PROJECTS_JSON. Результаты всех publish-проектов
    объединяются в этот каталог проекта.

    Дополнительные файлы берутся из каталога assets в корне репозитория.
    Они помещаются непосредственно в каталог решения и сохраняют
    относительную структуру внутри assets.

    Release notes уже создаются отдельным шагом до staging. Здесь они
    добавляются в staging под версионным именем, чтобы попасть в оба
    финальных архива и участвовать в их SHA-256. Отдельным GitHub asset
    markdown-файл больше не публикуется.

    Состав assets не перечисляется в workflow: добавление нового файла или
    каталога автоматически включает его в следующий релиз.

    Файлы publish с расширением .pdb исключаются из релиза.

    Outputs:
      - staging_directory - путь к подготовленному staging-каталогу.
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$projectPaths = @($env:PROJECTS_JSON | ConvertFrom-Json)
if ($projectPaths.Count -eq 0) {
    throw 'PROJECTS_JSON does not contain any projects.'
}

$publishRoot = Join-Path $env:GITHUB_WORKSPACE 'publish'
$assetsRoot = Join-Path $env:GITHUB_WORKSPACE 'assets'
$releaseNotesPath = Join-Path $env:GITHUB_WORKSPACE 'release-notes.md'

# PRODUCT является именем решения и одновременно корневым каталогом архива.
$solutionName = $env:PRODUCT
if ([string]::IsNullOrWhiteSpace($solutionName)) {
    throw 'PRODUCT is empty; cannot determine solution directory.'
}

# Все проекты объединяются в каталог первого проекта сборки согласно
# требованиям release packaging. Остальные project output directories
# не создаются в staging.
$firstProjectName = [System.IO.Path]::GetFileNameWithoutExtension([string]$projectPaths[0])
if ([string]::IsNullOrWhiteSpace($firstProjectName)) {
    throw "Could not determine first project name from: $($projectPaths[0])"
}

$stagingDirectory = Join-Path $env:RUNNER_TEMP "Stage_$($env:PRODUCT)_$($env:FULL_VERSION)"
$solutionDirectory = Join-Path $stagingDirectory $solutionName
$projectDirectory = Join-Path $solutionDirectory $firstProjectName

Remove-Item -LiteralPath $stagingDirectory -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Path $projectDirectory -Force | Out-Null

# Расширения, которые не включаются в релиз из результатов publish.
$excludedExtensions = @('.pdb')

# Формируем корни publish-каталогов заранее, чтобы для каждого файла
# определить проект и сохранить путь относительно его publish-корня.
$projectRoots = @()
foreach ($projectPath in $projectPaths) {
    $projectName = [System.IO.Path]::GetFileNameWithoutExtension([string]$projectPath)
    $projectRoots += [pscustomobject]@{
        Name = $projectName
        Root = (Join-Path $publishRoot $projectName)
    }
}

if (-not (Test-Path -LiteralPath $publishRoot -PathType Container)) {
    throw "Publish directory was not found: $publishRoot"
}

if (-not (Test-Path -LiteralPath $releaseNotesPath -PathType Leaf)) {
    throw "Release notes were not found: $releaseNotesPath"
}

$files = Get-ChildItem -LiteralPath $publishRoot -File -Recurse |
    Where-Object { $excludedExtensions -notcontains $_.Extension.ToLowerInvariant() }

foreach ($file in $files) {
    # Ищем проект, внутри каталога которого находится publish-файл.
    $matchedProject = $null
    foreach ($projectRoot in $projectRoots) {
        $prefix = $projectRoot.Root + [System.IO.Path]::DirectorySeparatorChar
        if ($file.FullName.StartsWith($prefix, [System.StringComparison]::OrdinalIgnoreCase)) {
            $matchedProject = $projectRoot.Root
            break
        }
    }

    if ($null -eq $matchedProject) {
        throw "Could not determine publish project for file: $($file.FullName)"
    }

    # Сохраняем структуру каждого publish-каталога, но начинаем её
    # непосредственно внутри общего каталога первого проекта.
    # Явное приведение к Char делает вызов TrimStart однозначным для
    # Windows PowerShell/.NET, где строка из одного символа не считается
    # корректным аргументом params [char[]].
    $relativePath = $file.FullName.Substring($matchedProject.Length).TrimStart([char]'\', [char]'/')
    $destinationPath = Join-Path $projectDirectory $relativePath
    $destinationDirectory = Split-Path -Parent $destinationPath

    New-Item -ItemType Directory -Path $destinationDirectory -Force | Out-Null
    Copy-Item -LiteralPath $file.FullName -Destination $destinationPath -Force
}

# Assets размещаются в каталоге решения, а не в каталоге проекта.
# Относительный путь внутри assets полностью сохраняется.
if (Test-Path -LiteralPath $assetsRoot -PathType Container) {
    $assetFiles = @(Get-ChildItem -LiteralPath $assetsRoot -File -Recurse)

    foreach ($assetFile in $assetFiles) {
        $relativeAssetPath = $assetFile.FullName.Substring($assetsRoot.Length).TrimStart([char]'\', [char]'/')
        $destinationPath = Join-Path $solutionDirectory $relativeAssetPath
        $destinationDirectory = Split-Path -Parent $destinationPath

        New-Item -ItemType Directory -Path $destinationDirectory -Force | Out-Null
        Copy-Item -LiteralPath $assetFile.FullName -Destination $destinationPath -Force
    }

    Write-Host "Staged $($assetFiles.Count) asset file(s) from: $assetsRoot"
}
else {
    Write-Host "Assets directory not found; no additional release files to stage."
}

# Release notes получают версионное имя и входят непосредственно в оба
# финальных архива. Они не публикуются отдельным GitHub Release asset.
$markdownName = "${env:PRODUCT}_${env:FULL_VERSION}.md"
$stagedMarkdownPath = Join-Path $stagingDirectory $markdownName
Copy-Item -LiteralPath $releaseNotesPath -Destination $stagedMarkdownPath -Force

# Выводим уже готовое дерево staging. Этот список соответствует структуре,
# которая будет передана модулю упаковки и попадёт в финальные архивы.
$stagedFiles = @(Get-ChildItem -LiteralPath $stagingDirectory -File -Recurse |
    ForEach-Object {
        $_.FullName.Substring($stagingDirectory.Length).TrimStart([char]'\', [char]'/')
    } |
    Sort-Object)

Write-Host '--- Release staging tree ---'
if ($stagedFiles.Count -eq 0) {
    Write-Host '(empty)'
}
else {
    $stagedFiles | ForEach-Object { Write-Host $_ }
}
Write-Host "--- End release staging tree ($($stagedFiles.Count) file(s)) ---"

Write-Host "Staged $($files.Count) publish file(s), release notes and assets into: $stagingDirectory"

# Передаём путь staging следующему этапу workflow через GITHUB_OUTPUT.
"staging_directory=$stagingDirectory" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
