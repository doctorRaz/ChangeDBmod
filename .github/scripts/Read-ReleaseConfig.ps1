<#
.SYNOPSIS
    Читает и валидирует .github/release.config.json.

.DESCRIPTION
    Проверяет, что:
      - файл конфигурации существует;
      - solution непуст и существует;
      - projects содержит хотя бы один существующий путь;
      - publicHere задан как boolean;
      - remote содержит только непустые имена GitHub-репозиториев.

    Возвращает через $env:GITHUB_OUTPUT:
      - solution_path - путь к solution относительно корня репозитория;
      - projects_json - JSON-массив путей к проектам;
      - product       - имя продукта (имя solution без расширения);
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

# projects обязателен и непуст: без него нечего публиковать.
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
    if ([string]::IsNullOrWhiteSpace($projectPath)) {
        throw "Release configuration contains an empty project path."
    }

    if (-not (Test-Path -LiteralPath (Join-Path $env:GITHUB_WORKSPACE $projectPath))) {
        throw "Project was not found: $projectPath"
    }

    Write-Host "  $projectPath"
}

Write-Host "Public in current repository: $($config.publicHere)"
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

# PowerShell не выдаёт JSON-представление для пустого pipeline.
# Явно сохраняем [] в output, чтобы workflow отличал пустой список
# remote от отсутствующего значения и не запускал публикацию.
if ($remoteRepos.Count -eq 0) {
    $remoteJson = '[]'
} else {
    $remoteJson = $remoteRepos | ConvertTo-Json -Compress
}

"solution_path=$solutionPath" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
"projects_json=$projectsJson" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
"product=$solutionName" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
"public_here=$($config.publicHere.ToString().ToLowerInvariant())" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
"remote_json=$remoteJson" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8
