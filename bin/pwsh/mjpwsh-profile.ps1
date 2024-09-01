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

## DIR 
# function Get-LsKali () { wsl ls --color=auto -hF $args }

# function Push-Mja ([string]$comment){ 
# 	cd "D:\_Jaime\_GIT\04_MJGITs\08 (git) PowerShell\Scripts\00 mjaliases\";
# 	git add "D:\_Jaime\_GIT\04_MJGITs\08 (git) PowerShell\Scripts\00 mjaliases\mja.ps1";
# 	git commit -m $comment;
# 	git push
# 	cd -
# } ; New-Alias -Name pmja Push-Mja

## Virtual machine
# function Run-VM { pwsh "D:\_Jaime\_GIT\04_MJGITs\01 MJComputer Science\virtualmachine\Virtualbox\00 Scripts\runmjvm.ps1" }
# function Stop-VM { pwsh "D:\_Jaime\_GIT\04_MJGITs\01 MJComputer Science\virtualmachine\Virtualbox\00 Scripts\runmjvm.ps1" }
# function GetList-VM { pwsh "D:\_Jaime\_GIT\04_MJGITs\01 MJComputer Science\virtualmachine\Virtualbox\00 Scripts\runmjvm.ps1" }
# New-Alias -Name runvm Run-VM
# New-Alias -Name stopvm Stop-VM
# New-Alias -Name getvm GetList-VM
# New-Alias -Name grep findstr


## PATH-ALIAS
$mjbrain="D:\_Jaime\_GIT\04_MJGITs\mjbrain"
$mjcs="D:\_Jaime\_GIT\04_MJGITs\01 MJComputer Science"
$capst="D:\_Jaime\02 UPTP\_CLASES\06 SEXTO SEMESTRE\07 CAPSOTNE"
$mjsc="D:\_Jaime\_GIT\04_MJGITs\00 (git) Commands\00Scripts"
function Go-path-gits { cd $gits }; New-Alias -Name gits Go-path-gits
function Go-path-capstone { cd $capst }; New-Alias -Name caps Go-path-capstone
function Go-path-mjbrain{ cd $mjbrain }; New-Alias -Name mjbrain Go-path-mjbrain
function Go-path-mjbrain{ cd $mjbrain }; New-Alias -Name brain Go-path-mjbrain
function Go-path-mjcs{ cd $mjcs }; New-Alias -Name mjcs Go-path-mjcs 
function Go-path-mjsc{ cd $mjsc }; New-Alias -Name mjsc Go-path-mjsc 

# Edit Powershell Profile
function Edit-pwsh-profile  (){ nvim $PROFILE } New-Alias -Name epp Edit-pwsh-profile
function Edit-mjpwsh-profile  (){ nvim "~\.mj-dotfiles\bin\pwsh\mjpwsh-profile.ps1" } New-Alias -Name empp Edit-mjpwsh-profile

## From PowerShell
function Cd-back-back { cd .. }; New-Alias -Name ".." Cd-back-back
# Remove-Alias -Name ls #because can't overrride it
# New-Alias -Name ls Get-ListS
#
function Get-ListS { Get-ChildItem -Name }; New-Alias -Name l Get-ListAttrib
function Get-ListAttrib{ Get-ChildItem }; New-Alias -Name ll Get-ListAttrib
# New-Alias -Name im Import-Module 
# New-Alias -Name sm mjshowMarkdown 
# New-alias -Name lk -Value Get-LsKali -Option AllScope


# Git
function Get-GitStatus ()    { git status }    New-Alias -Name gs -Value Get-GitStatus
function Get-GitLog ()       { git log --all --oneline --graph --decorate } New-Alias -Name glo -Value Get-GitLog
function Get-FilesPushed ()  { git ls-tree -r --name-only master } New-Alias -Name gfp -Value Get-FilesPushed
function Get-GitBranchAll () { git branch -a } New-Alias -Name gba -Value Get-GitBranchAll
function Get-GitDiff ()      { git diff }      New-Alias -Name gd -Value Get-GitDiff
function Set-GitCommit (
	[string] $msg
	)    { git commit -m $msg} New-Alias -Name gco -Value Set-GitCommit 

## Jobs - Section
# New-Alias -Name jobs -value Get-Job

