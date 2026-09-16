<#
.SYNOPSIS
    Создаёт GitHub Release с финальными assets.

.PARAMETER Repository
    owner/repo, куда создаётся релиз. По умолчанию - текущий ($GITHUB_REPOSITORY).

.PARAMETER VerifyTag
    Если указан, gh release create запускается с --verify-tag: релиз
    создаётся только если тег УЖЕ существует в репозитории. Для public-репо
    это НЕ подходит (там тег создаётся самим gh release create), поэтому
    для private используется этот флаг, для public - нет.

.DESCRIPTION
    Публикует обычный ZIP, пароль-защищённый 7z и update.json. Все три файла
    были созданы до этого шага и передаются сюда без повторной упаковки.
    release-notes.md используется только как описание GitHub Release.
#>

[CmdletBinding()]
param(
    [string]$Repository = $env:GITHUB_REPOSITORY,
    [switch]$VerifyTag
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$tag = $env:GITHUB_REF_NAME
$product = $env:PRODUCT
$fullVersion = $env:FULL_VERSION
$archiveName = $env:ARCHIVE_NAME
$protectedArchiveName = $env:PROTECTED_ARCHIVE_NAME
$releaseTitle = "$product $fullVersion"

# Hashtable enumerator must be used explicitly. Without GetEnumerator(),
# PowerShell returns only the keys, so .Value/.Key are unavailable under
# StrictMode and validation fails before the release is created.
foreach ($entry in @{
    ARCHIVE_NAME = $archiveName
    PROTECTED_ARCHIVE_NAME = $protectedArchiveName
}.GetEnumerator()) {
    if ([string]::IsNullOrWhiteSpace([string]$entry.Value)) {
        throw "$($entry.Key) is empty."
    }
}

# --- Идемпотентность для rerun ---
# Удаляем существующий Release, но сохраняем тег: для private-репозитория
# gh release create вызывается с --verify-tag и ожидает существующий тег.
gh release delete $tag --repo $Repository --yes 2>$null

$args = @(
    'release', 'create', $tag,
    '--repo', $Repository,
    '--title', $releaseTitle,
    '--notes-file', 'release-notes.md',
    $archiveName,
    $protectedArchiveName,
    'update.json'
)

if ($VerifyTag) {
    $args += '--verify-tag'
}

gh @args
if ($LASTEXITCODE -ne 0) {
    throw "gh release create failed for $Repository with exit code $LASTEXITCODE"
}