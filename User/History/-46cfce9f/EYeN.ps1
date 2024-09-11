# Powershell 7 main-system config

# Init oh my powershell and load dracula powerline
oh-my-posh init pwsh --config 'C:\Users\philip\dracula.omp.json' | Invoke-Expression

# Import modules for powershell 
Import-Module Az.Tools.Predictor
Import-Module -Name Terminal-Icons
Set-PSReadLineOption -Colors @{emphasis = '#ff0000'; inlinePrediction = 'Cyan'}
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
# New-Alias <alias> <aliased-command>
# New-Alias open ii
Set-Alias ls "ls -ca --color=auto" 
Set-Alias l ls
Set-Alias ll "ls -la" 
if ($host.Name -eq 'ConsoleHost')
{
    function ls_git { & 'C:\Program Files\Git\usr\bin\ls' --color=auto -hF $args }
    Set-Alias -Name ls -Value ls_git -Option AllScope
}

