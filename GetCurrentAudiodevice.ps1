$device = (Get-CimInstance win32_sounddevice | Where-Object { $_.Status -eq "OK" -and $_.ConfigManagerErrorCode -eq 0 })[0]
Write-Host $device.Name