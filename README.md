# FFXIV screenshot renamer

A script for mass-renaming Final Fantasy XIV screenshots to a more sortable format.

Old | New
------|-------
ffxiv_{dMy_hms_S}|ff_{yMd_hms_S}
ffxiv_31072021_164028_968.png|ff_20210731_164028_968.png

## Requirements

PowerShell

## Setup

1. Install PowerShell (installed by default on Windows) [(macOS)](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-macos) [(Linux)](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux)
2. Copy the `Rename-FFXIVScreenshots.ps1` script to the FFXIV screenshot folder.
3. (Optional) Copy the `Rename-FFXIVScreenshotsBack.ps1` script to the FFXIV folder.

## Usage (Windows)

### Windows Explorer

1. Navigate to the FFXIV screenshot folder.
2. Right-click `Rename-FFXIVScreenshots.ps1` and select "Run with PowerShell".
3. (Optional) Run `Rename-FFXIVScreenshotsBack.ps1` to revert the rename.

### Terminal

1. Open a terminal (e.g. PowerShell).
2. Navigate to the FFXIV screenshot folder and run the script:
```powershell
cd C:\path\to\ffxiv_screenshots
.\Rename-FFXIVScreenshots.ps1
```
3. (Optional) Run `Rename-FFXIVScreenshotsBack.ps1` to revert the rename.

## Usage (macOs and Linux) (untested)

1. Open a terminal (e.g. PowerShell).
2. Navigate to the FFXIV screenshot folder and run the script:
```powershell
cd /path/to/ffxiv_screenshots
pwsh ./Rename-FFXIVScreenshots.ps1
```
3. (Optional) Run `Rename-FFXIVScreenshotsBack.ps1` to revert the rename.
