# Powershell 7 main-system config

using namespace System.Management.Automation
using namespace System.Management.Automation.Language

# Init oh my powershell and load dracula powerline
oh-my-posh init pwsh --config 'C:\Users\philip\dracula.omp.json' | Invoke-Expression

# Import modules for powershell 
Import-Module Az.Tools.Predictor
Import-Module -Name Terminal-Icons
Import-Module z
# PSReadLine variables
Set-PSReadLineOption -Colors @{emphasis = '#ff0000'; inlinePrediction = 'Cyan'}
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
# New-Alias <alias> <aliased-command>
# New-Alias open ii
Set-Alias ls "dir" 
Set-Alias l "ls"
Set-Alias ll "ls -la"
Set-alias [-Name] tempp Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\TempP.ps1"
Set-alias [-Name] tempd Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\TempD.ps1"
Set-alias [-Name] tempa  Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\TempALL.ps1"
Set-alias [-Name] less  Invoke-Item "C:\Users\philip\Documents\PowerShell\Scripts\less.ps1"
# Set-Alias cd "z"
#if ($host.Name -eq 'ConsoleHost')
#{
#    function ls_git { & 'C:\Program Files\Git\usr\bin\ls' --color=auto -hF $args }
#    Set-Alias -Name ls -Value ls_git -Option AllScope
#}

