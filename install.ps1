#Requires -Version 5.1
<#
.SYNOPSIS
  Install OPC skills to ~/.cursor/skills for global Cursor access.

.DESCRIPTION
  Copies each opc-* skill directory from this repo into the user's
  Cursor skills folder. Safe to re-run (overwrites existing opc-* skills).

.EXAMPLE
  .\install.ps1
  .\install.ps1 -WhatIf
#>
param(
    [switch]$WhatIf
)

$ErrorActionPreference = 'Stop'
$SourceRoot = $PSScriptRoot
$DestRoot = Join-Path $env:USERPROFILE '.cursor\skills'

if (-not (Test-Path $SourceRoot)) {
    Write-Error "Source not found: $SourceRoot"
}

$skillDirs = Get-ChildItem -Path $SourceRoot -Directory |
    Where-Object { $_.Name -like 'opc-*' }

if ($skillDirs.Count -eq 0) {
    Write-Warning "No opc-* skill directories found in $SourceRoot"
    exit 1
}

if (-not $WhatIf) {
    New-Item -ItemType Directory -Force -Path $DestRoot | Out-Null
}

Write-Host "OPC Skill OS install"
Write-Host "  From: $SourceRoot"
Write-Host "  To:   $DestRoot"
Write-Host ""

foreach ($dir in $skillDirs) {
    $target = Join-Path $DestRoot $dir.Name
    if ($WhatIf) {
        Write-Host "[WhatIf] Would copy $($dir.Name) -> $target"
    }
    else {
        Copy-Item -Path $dir.FullName -Destination $target -Recurse -Force
        Write-Host "Installed $($dir.Name)"
    }
}

Write-Host ""
if ($WhatIf) {
    Write-Host "Dry run complete. Run without -WhatIf to install."
}
else {
    Write-Host "Done. Use @opc-os in Cursor to start."
    Write-Host "Installed $($skillDirs.Count) skills."
}
