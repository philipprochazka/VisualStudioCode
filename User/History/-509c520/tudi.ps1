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

Set-Alias Tempa Start-Process -filepath "C:\Users\philip\Documents\PowerShell\Scripts\TempD.ps1"
New-alias Tempp $env[Invoke-Expression $env"Start-Process -filepath "C:\Users\philip\Documents\Templates-Drawing_and_VsCode\Print-Layouts""]