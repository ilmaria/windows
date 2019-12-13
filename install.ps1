$username = "Ilmari"
$home_dir = "C:\Users\$username"

$files = @{
    'Microsoft.PowerShell_profile.ps1' = "$home_dir\Documents\WindowsPowerShell"
    'Finnish - no dead keys.klc' = "$home_dir\Documents"
    'drawterm.lnk' = "$home_dir\Desktop"
    'my_hotkeys.ahk.lnk' = "$home_dir\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
}

foreach($file in $files.keys) {
    mv "$file" "$files.$file/$file"
}

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
