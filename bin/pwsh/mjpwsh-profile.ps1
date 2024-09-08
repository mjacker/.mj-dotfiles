<#
.SYNOPSIS
	This script/function does personalizate my powershell aliases.

.DESCRIPTION
	A more detailed description of why and how the function works.

.PARAMETER DemoParam1
	The parameter DemoParam1 is used to define the value of blah and also blah.

.PARAMETER DemoParam2
	The parameter DemoParam2 is used to define the value of blah and also blah.

.EXAMPLE
	The example below does blah
	PS C:\> Example

.NOTES
    Author: MJacker
    Last Edit: 20241001
    Version 1.0 - initial release of funcitons
    Version 1.1 - update for formating file
    Moving Configuration to on-my-posh windows terminal
#>

## PATH-ALIAS
$mjbrain="D:\_mjacker\_GIT\04_MJGITs\mjbrain"
$mjcs="D:\_mjacker\_GIT\04_MJGITs\01 MJComputer Science"
$capst="D:\_mjacker\02 UPTP\_CLASES\06 SEXTO SEMESTRE\07 CAPSOTNE"
$mjsc="D:\_mjacker\_GIT\04_MJGITs\00 (git) Commands\00Scripts"
function Go-path-gits { cd $gits }; New-Alias -Name gits Go-path-gits
function Go-path-capstone { cd $capst }; New-Alias -Name caps Go-path-capstone
function Go-path-mjbrain{ cd $mjbrain }; New-Alias -Name mjbrain Go-path-mjbrain
function Go-path-mjbrain{ cd $mjbrain }; New-Alias -Name brain Go-path-mjbrain
function Go-path-mjcs{ cd $mjcs }; New-Alias -Name mjcs Go-path-mjcs 
function Go-path-mjsc{ cd $mjsc }; New-Alias -Name mjsc Go-path-mjsc 

# Edit Powershell Profile
function Edit-pwsh-profile  (){ nvim $PROFILE } New-Alias -Name epp Edit-pwsh-profile
function Push-pwsh-profile  (){ 
	cd $env:HOMEPATH\.mj-dotfiles\
	git add $env:HOMEPATH\.mj-dotfiles\bin\pwsh\hardlink-this-Microsoft.PowerShell_profile.ps1.ps1;
	git commit -m "Updated pwsh-profile.";
	git push
	cd -} New-Alias -Name ppp Push-mjpwsh-profile
function Edit-mjpwsh-profile  (){ nvim $env:HOMEPATH\.mj-dotfiles\bin\pwsh\mjpwsh-profile.ps1 } New-Alias -Name empp Edit-mjpwsh-profile
function Push-mjpwsh-profile  (){ 
	cd $env:HOMEPATH\.mj-dotfiles\
	git add $env:HOMEPATH\.mj-dotfiles\bin\pwsh\mjpwsh-profile.ps1;
	git commit -m "Updated mjpwsh-profile.";
	git push
	cd -} New-Alias -Name pmpp Push-mjpwsh-profile

## From PowerShell
function Cd-back-back { cd .. }; New-Alias -Name ".." Cd-back-back
# Remove-Alias -Name ls #because can't overrride it
function Get-ListS { Get-ChildItem -Name }; New-Alias -Name l Get-ListAttrib
function Get-ListAttrib{ Get-ChildItem }; New-Alias -Name ll Get-ListAttrib
function Get-ListAttrib{ Get-ChildItem -Force}; New-Alias -Name la Get-ListAttrib
function Get-Clear-Ls {Clear-Host; Get-ChildItem }; New-Alias -Name cl Get-Clear-Ls

# Git
function Get-GitStatus ()    { git status }    New-Alias -Name gs -Value Get-GitStatus
function Get-GitLog ()       { git log --all --oneline --graph --decorate } New-Alias -Name glo -Value Get-GitLog
function Get-GitLog-N ( [int] $nlines ){ git log --all --oneline -n $nlines --graph --decorate } New-Alias -Name glon -Value Get-GitLog-N
function Get-FilesPushed ()  { git ls-tree -r --name-only master } New-Alias -Name gfp -Value Get-FilesPushed
function Get-GitBranchAll () { git branch -a } New-Alias -Name gba -Value Get-GitBranchAll
function Get-GitDiff ()      { git diff }      New-Alias -Name gd -Value Get-GitDiff
function Set-GitAdd    ([string] $filename)    { git add $filename} New-Alias -Name ga -Value Set-GitAdd
function Set-GitCommit ([string] $msg)         { git commit -m $msg} New-Alias -Name gco -Value Set-GitCommit
function Set-GitPush ()      { git push }      New-Alias -Name gpu -Value Set-GitPush

# Funtions
function Run-NeoVim  ( [string] $param) { nvim $param } New-Alias -Name vim -Value Run-NeoVim
function Run-Sudo		( [string] $program) { Start-Process $program -Verb runAs } New-Alias -Name sudo -Value Run-Sudo

## Jobs - Section
# New-Alias -Name jobs -value Get-Job

## Virtual machine
# function Run-VM { pwsh "D:\_Jaime\_GIT\04_MJGITs\01 MJComputer Science\virtualmachine\Virtualbox\00 Scripts\runmjvm.ps1" }
# function Stop-VM { pwsh "D:\_Jaime\_GIT\04_MJGITs\01 MJComputer Science\virtualmachine\Virtualbox\00 Scripts\runmjvm.ps1" }
# function GetList-VM { pwsh "D:\_Jaime\_GIT\04_MJGITs\01 MJComputer Science\virtualmachine\Virtualbox\00 Scripts\runmjvm.ps1" }
# New-Alias -Name runvm Run-VM
# New-Alias -Name stopvm Stop-VM
# New-Alias -Name getvm GetList-VM
# New-Alias -Name grep findstr
