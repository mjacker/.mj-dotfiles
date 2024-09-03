oh-my-posh init pwsh | Invoke-Expression
Import-Module -Name Terminal-Icons

if ($host.Name -eq 'ConsoleHost')
{
	Import-Module PSReadLine
}
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Vi

Import-Module ~\.mj-dotfiles\bin\pwsh\mjpwsh-profile.ps1

Write-Host "Welcome $env:USERNAME"

