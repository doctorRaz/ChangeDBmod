<#
.SYNOPSIS
    Читает и валидирует конфигурацию release.

.DESCRIPTION
    Проверяет solution, основной список projects, необязательные списки
    subProjects и modules, publicHere и remote.

    subProjects состоит из объектов с массивом projects. Первый проект
    каждой группы определяет имя каталога этой группы в release archive.

    Возвращает через $env:GITHUB_OUTPUT:
      - solution_path - путь к solution;
      - projects_json - JSON-массив основных проектов;
      - subprojects_json - JSON-массив групп дополнительных проектов;
      - modules_json    - JSON-массив внешних immutable modules;
      - product       - имя продукта;
      - public_here   - публиковать ли Release в текущем репозитории;
      - remote_json   - JSON-массив целевых mirror-репозиториев.
#>

# Строгий режим: ошибки конфигурации должны останавливать release до сборки.
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$configPath = Join-Path $env:GITHUB_WORKSPACE $env:RELEASE_CONFIG_FILE

if (-not (Test-Path -LiteralPath $configPath)) {
    throw "Release configuration was not found: $configPath"
}

$config = Get-Content -LiteralPath $configPath -Raw | ConvertFrom-Json

# solution обязателен: из него вычисляется имя продукта.
if ([string]::IsNullOrWhiteSpace($config.solution)) {
    throw "Release configuration property 'solution' is empty."
}

# projects обязателен и непуст: без основного проекта нечего публиковать.
if ($null -eq $config.projects -or @($config.projects).Count -eq 0) {
    throw "Release configuration property 'projects' must contain at least one project."
}

if ($null -eq $config.publicHere -or $config.publicHere.GetType() -ne [bool]) {
    throw "Release configuration property 'publicHere' must be a boolean."
}

if ($null -eq $config.remote) {
    throw "Release configuration property 'remote' must be an array. Use [] when no mirror repositories are configured."
}

$solutionPath = $config.solution
$projectPaths = @($config.projects)
$remoteRepos = @($config.remote)
$subProjects = @($config.subProjects)
$modules = if ($null -eq $config.modules) { @() } else { @($config.modules) }
$ignoreSubProjects = $env:IGNORE_SUBPROJECTS -eq 'true'
if ($ignoreSubProjects) {
    # При необходимости можно отключить subProjects для отдельного режима запуска.
    # subProjects остаются в общей конфигурации, но не должны требовать
    # наличия их исходников в checkout этого режима.
    $subProjects = @()
}
$solutionName = [System.IO.Path]::GetFileNameWithoutExtension($solutionPath)

if ([string]::IsNullOrWhiteSpace($solutionName)) {
    throw "Could not determine product name from solution: $solutionPath"
}

# Проверяем, что solution реально есть в репозитории.
if (-not (Test-Path -LiteralPath (Join-Path $env:GITHUB_WORKSPACE $solutionPath))) {
    throw "Solution was not found: $solutionPath"
}

Write-Host "Solution: $solutionPath"
Write-Host "Projects:"

foreach ($projectPath in $projectPaths) {
    if ([string]::IsNullOrWhiteSpace([string]$projectPath)) {
        throw "Release configuration contains an empty project path."
    }

    if (-not (Test-Path -LiteralPath (Join-Path $env:GITHUB_WORKSPACE $projectPath))) {
        throw "Project was not found: $projectPath"
    }

    Write-Host "  $projectPath"
}

# subProjects могут быть отключены переменной IGNORE_SUBPROJECTS.
# При отключении workflow получает пустой список.
# Если subProjects не игнорируется и задан,
# каждая группа обязана содержать хотя бы один существующий project path.
Write-Host "Subprojects:"
foreach ($subProject in $subProjects) {
    if ($null -eq $subProject.projects -or @($subProject.projects).Count -eq 0) {
        throw "Each subProjects entry must contain at least one project."
    }

    $subProjectPaths = @($subProject.projects)
    $groupName = [System.IO.Path]::GetFileNameWithoutExtension([string]$subProjectPaths[0])
    if ([string]::IsNullOrWhiteSpace($groupName)) {
        throw "Could not determine subproject group name from first project: $($subProjectPaths[0])"
    }

    Write-Host "  [$groupName]"
    foreach ($projectPath in $subProjectPaths) {
        if ([string]::IsNullOrWhiteSpace([string]$projectPath)) {
            throw "Release configuration contains an empty subproject path."
        }

        if (-not (Test-Path -LiteralPath (Join-Path $env:GITHUB_WORKSPACE $projectPath))) {
            throw "Subproject project was not found: $projectPath"
        }

        Write-Host "    $projectPath"
    }
}

# modules являются внешними опубликованными artifacts. Их исходники не проверяются
# и не участвуют в restore/build; проверяем только структуру конфигурации.
Write-Host "Modules:"
foreach ($module in $modules) {
    if ([string]::IsNullOrWhiteSpace([string]$module.repository)) {
        throw "Each module must define a repository."
    }

    $moduleRepository = [string]$module.repository
    if ($moduleRepository -notmatch '^[^/\s]+/[^/\s]+$') {
        throw "Invalid module repository '$moduleRepository'. Expected owner/repository."
    }

    if ($null -eq $module.projects -or @($module.projects).Count -eq 0) {
        throw "Module '$moduleRepository' must contain at least one project."
    }

    foreach ($projectPath in @($module.projects)) {
        $moduleProject = [string]$projectPath
        $normalizedProject = $moduleProject.Replace('\\','/').Trim('/')
        if ([string]::IsNullOrWhiteSpace($normalizedProject)) {
            throw "Module '$moduleRepository' contains an empty project path."
        }
        if ($normalizedProject -match '(^|/)\.\.(/|$)' -or [System.IO.Path]::IsPathRooted($normalizedProject)) {
            throw "Invalid project path '$moduleProject' in module '$moduleRepository'."
        }
        Write-Host "  [$moduleRepository] $normalizedProject"
    }
}
Write-Host "Remote repositories:"

foreach ($remoteRepo in $remoteRepos) {
    if ([string]::IsNullOrWhiteSpace([string]$remoteRepo)) {
        throw "Release configuration contains an empty remote repository."
    }

    # Формат owner/repository намеренно проверяется здесь, до build.
    if ([string]$remoteRepo -notmatch '^[^/\s]+/[^/\s]+$') {
        throw "Invalid remote repository '$remoteRepo'. Expected owner/repository."
    }

    Write-Host "  $remoteRepo"
}

# JSON используется для передачи массивов между шагами через GITHUB_OUTPUT
# без потери структуры и экранирования.
$projectsJson = $projectPaths | ConvertTo-Json -Compress
if (@($subProjects).Count -eq 0) {
    $subProjectsJson = '[]'
} else {
    $subProjectsJson = $subProjects | ConvertTo-Json -Compress -Depth 10
}

# PowerShell не выдаёт JSON-представление для пустого pipeline.
# Явно сохраняем [] в output, чтобы workflow отличал пустой список
# remote от отсутствующего значения и не запускал публикацию.
$modulesJson = if (@($modules).Count -eq 0) { '[]' } else { $modules | ConvertTo-Json -Compress -Depth 10 }

if ($remoteRepos.Count -eq 0) {
    $remoteJson = '[]'
} else {
    $remoteJson = $remoteRepos | ConvertTo-Json -Compress
}

"solution_path=$solutionPath" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
"projects_json=$projectsJson" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
"subprojects_json=$subProjectsJson" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
"modules_json=$modulesJson" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
"product=$solutionName" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
"public_here=$($config.publicHere.ToString().ToLowerInvariant())" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
"remote_json=$remoteJson" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
