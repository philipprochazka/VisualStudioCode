Start-Process -ArgumentList -RedirectStandardOutput -RedirectStandardError -RedirectStandardInput -Wait { Get-ChildItem | Out-Host -Paging}
