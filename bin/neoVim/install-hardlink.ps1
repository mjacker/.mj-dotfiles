# if (!(Test-Path -Path "$PROFILE")) {
#         New-Item -Path $PROFILE -ItemType HardLink -Target ~\.mj-dotfiles\bin\pwsh\create-hardlink-Microsoft.PowerShell_profile.ps1
#         Install-Module -Name Terminal-Icons -Repository PSGallery
#         Install-Module z -AllowClobber
# }
# else {
#      Write-Host "Profile in current user already created!"
# }
#

if (!(Test-Path -Path $env:LOCALAPPDATA\nvim\init.vim )){
	# New-Item -ItemType File -Path $env:LOCALAPPDATA\nvim\init.vim -Force
        New-Item -Path $env:LOCALAPPDATA\nvim\init.vim -ItemType HardLink -Target ~\.mj-dotfiles\bin\neoVim\init.vim
}
else
{
	Write-Host "Warning!. File already created."
}
