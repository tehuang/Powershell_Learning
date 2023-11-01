$service = Read-Host "Please type the service to view"
$variable = Get-Service -Name $service

Write-Host $variable.Name -Foreground Yellow
Write-Host $variable.DisplayName -Foreground Green
Write-Host $variable.Description -Foreground Blue
