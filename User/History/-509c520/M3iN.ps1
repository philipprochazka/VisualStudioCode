oh-my-posh init pwsh | Invoke-Expression
Import-Module Az.Tools.Predictor
Set-PSReadLineOption -Colors @{emphasis = '#ff0000'; inlinePrediction = 'Cyan'}
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
# New-Alias <alias> <aliased-command>
# New-Alias open ii
Set-alias [-Name] tempp Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\TempP.ps1"
Set-alias [-Name] tempd Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\TempD.ps1"
Set-alias [-Name] tempa  Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\TempALL.ps1"
Set-alias [-Name] less  Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\less.ps1"