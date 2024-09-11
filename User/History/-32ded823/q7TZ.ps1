# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
# New-Alias <alias> <aliased-command>
New-Alias open ii
Set-Alias "dirl" "dir | out-host -paging"   
New-alias Tempd Invoke-Expression $env"Start-Process -filepath "C:\Users\philip\Documents\Templates-Drawing_and_VsCode\Project-Tree-Templates-Type-specific""
New-alias -Name Tempp -Value Invoke-Expression $env"Start-Process -filepath "C:\Users\philip\Documents\Templates-Drawing_and_VsCode\Print-Layouts""