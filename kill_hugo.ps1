Get-Process -Name hugo -ErrorAction SilentlyContinue | Stop-Process -Force
Start-Sleep -Seconds 2
$left = Get-Process -Name hugo -ErrorAction SilentlyContinue
if ($left) {
  Write-Output "still running, killing again"
  $left | Stop-Process -Force
  Start-Sleep -Seconds 2
} else {
  Write-Output "all stopped"
}