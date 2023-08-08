$Port = 3000
$Process = Get-NetTCPConnection -LocalPort $Port | Select-Object -Property OwningProcess -Unique
Stop-Process -Id $Process.OwningProcess -Force
