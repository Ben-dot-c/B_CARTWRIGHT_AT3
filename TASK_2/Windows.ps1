$dir = Read-Host "Enter the directory to search"

$type = Read-Host "Enter the file type"

Get-ChildItem -Path "$dir\*" -Filter "*.$type" | Select-Object Name, Directory | Format-Table -AutoSize