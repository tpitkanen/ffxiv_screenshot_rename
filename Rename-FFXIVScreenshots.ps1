function Rename-FFXIVScreenshots {
    # Rename FFXIV screenshots from "ffxiv_{dMy_hms_S}.{ext}" to "ff_{yMd_hms_S}.{ext}"
    # e.g. 'ffxiv_31072021_164028_968.png' -> 'ff_20210731_164028_968.png'
    $screenshot_folder = '.'
    $items = Get-ChildItem -Path $screenshot_folder -Recurse -File -Include 'ffxiv_*.png', 'ffxiv_*.jpg'

    foreach ($i in $items) {
        $old_name = $i.Name
        $new_name = $i.Name -Replace 'ffxiv_(\d{2})(\d{2})(\d{4})_(\d{2})(\d{2})(\d{2})', 'ff_$3$2$1_$4$5$6'

        if ($new_name -ne $old_name) {
            Rename-Item -Path $i -NewName $new_name
            Write-Output "'$old_name' -> '$new_name'"
        }
    }
}

Rename-FFXIVScreenshots
