Start-Process -ArgumentList -RedirectStandardOutput -RedirectStandardError -RedirectStandardInput { Get-ChildItem | Out-Host -Paging}
