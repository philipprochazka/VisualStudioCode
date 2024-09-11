# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
# New-Alias <alias> <aliased-command>
New-Alias open ii
Set-alias [-Name] tempp [-Value] Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\TempP.ps1"
Set-alias [-Name] tempd [-Value] Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\TempD.ps1"
Set-alias [-Name] tempa [-Value] Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\TempALL.ps1"
Set-alias [-Name] less [-Value] Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\less.ps1"