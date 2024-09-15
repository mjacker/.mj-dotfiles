oh-my-posh init pwsh | Invoke-Expression
Import-Module -Name Terminal-Icons

$versionMinimum = [Version]'7.1.999'

if ($host.Name -eq 'ConsoleHost') {
	Import-Module PSReadLine
}
if (($host.Name -eq 'ConsoleHost') -and ($PSVersionTable.PSVersion -ge $verisonMinimum)){ Write-Host "Oops"	
	Set-PSReadLineOption -PredictionSource HistoryAndPlugin
}
else {
	Set-PSReadLineOption -PredictionSource History
}
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Vi
Set-PSReadLineOption -ShowToolTips

#Autocomplete for Arrow Keys
# Set-PSReadLineOption -HistorySearchCursorMovesToEnd
# Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Import-Module ~\.mj-dotfiles\bin\pwsh\mjpwsh-profile.ps1

Write-Host "Welcome $env:USERNAME"

