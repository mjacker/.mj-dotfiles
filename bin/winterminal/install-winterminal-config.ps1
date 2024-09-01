Write-Host "This scripts required Admin privileges."
Write-Host "Script to install my config into windows terminal."

#
# if (!(Test-Path -Path ".\CasadiaMono.zip")) {
#     Write-Host "File not exist. Attend to download fonts from NerdFonts"
    # .\getfonts.ps1
    # invoke-expression -Command .\getfonts.ps1
    # & "$PSScriptRoot\getfonts.ps1"
# }
# oh-my-posh font install meslolse {
#     Write-Host "File already downloaded."
#     }
# 
# 
# if (Test-Path -Path ".\CasadiaMono.zip") {
#     Write-Host "Unpacking zip..."
#     Expand-Archive .\CasadiaMono.zip --Force
# } 

winget install JanDeDobbeleer.OhMyPosh
oh-my-posh font install meslo
Install-Module -Name Terminal-Icons -Repository PSGallery
# oh-my-posh init pwsh | Invoke-Expression
Install-Module z -AllowClobber



