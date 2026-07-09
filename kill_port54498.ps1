$conns = Get-NetTCPConnection -LocalPort 54498 -State Listen -ErrorAction SilentlyContinue
foreach ($c in $conns) {
  $p = Get-Process -Id $c.OwningProcess -ErrorAction SilentlyContinue
  if ($p) {
    Write-Output "PID $($p.Id) $($p.ProcessName)"
    Stop-Process -Id $p.Id -Force
    Write-Output "killed"
  } else {
    Write-Output "PID $($c.OwningProcess) - no process (zombie socket)"
  }
}