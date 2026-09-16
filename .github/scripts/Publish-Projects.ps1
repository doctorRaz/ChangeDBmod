<#
.SYNOPSIS
    Публикует каждый независимый release-проект в отдельный каталог.

.DESCRIPTION
    Для каждого проекта из $env:PROJECTS_JSON выполняется dotnet publish
    в $GITHUB_WORKSPACE/publish/<ProjectName>.

    Разделение по каталогам нужно, чтобы publish-операции не влияли друг на
    друга: у проектов могут пересекаться имена выходных файлов и т.п.
    Объединение в плоскую структуру происходит на следующем шаге.

    Build и Revision передаются как свойства MSBuild - они общие для всех
    проектов, тогда как Major.Minor каждый проект берёт из своей версии.
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$projectPaths = $env:PROJECTS_JSON | ConvertFrom-Json
$publishRoot = Join-Path $env:GITHUB_WORKSPACE 'publish'

# Чистим каталог от возможных артефактов предыдущего запуска.
Remove-Item -LiteralPath $publishRoot -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Path $publishRoot -Force | Out-Null

foreach ($projectPath in $projectPaths) {
    $projectName = [System.IO.Path]::GetFileNameWithoutExtension($projectPath)
    $projectDirectory = Join-Path $publishRoot $projectName

    Write-Host "Publishing: $projectPath"
    Write-Host "Output: $projectDirectory"

    # --no-restore: restore уже сделан на предыдущем шаге для всего solution.
    # --self-contained false: framework-dependent сборка (как в оригинале).
    dotnet publish "$projectPath" `
        --configuration Release `
        # --no-restore `
        --output "$projectDirectory" `
        --self-contained false `
        -p:Build=$env:BUILD `
        -p:Revision=$env:REVISION

    # dotnet publish возвращает ненулевой exit code при ошибке - проверяем явно,
    # чтобы не продолжать сборку архива из неполного publish-результата.
    if ($LASTEXITCODE -ne 0) {
        throw "dotnet publish failed for $projectPath with exit code $LASTEXITCODE"
    }
}