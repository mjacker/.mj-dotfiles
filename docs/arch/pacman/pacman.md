# Pacman

Refresh cache for repositories
pacman -Syy

`-S` sinc
`-y` refresh package database
`-y` force it to refresh the local database even if it already refresh
cat /etc/pacman.d/mirrorlist

# Pacman S - SYNC - Installing packages
`sudo pacman -S htop`

# Pacman S - search
`sudo pacman -Ss pygame` Searching packaga-name by command

# Pacman Sc - Cache
`sudo pacman -Sc` Remove all other packages from cache.

# Pacman Q - querry
`pacman -Q` List Installed packages
`pacman -Qe` List Installed packages, user-installed
`pacman -Qeq` List Installed packages, user-installed, (without showing versions)
`pacman -Qd` List Installed packages, as dependencies
`pacman -Ql` List package files
`pacman -Qi` Show package info.
`pacman -Qi | grep -E 'Name|Reason'` List Installed packages, as dependencies
`pacman -Qs <name>` List all installed packages related to <name> 
`pacman -Qdt` List orphan packages

# Pacman R - REMOVE - installed packages
`sudo pacman -R htop` Just removing the program itself
`sudo pacman -R <name> <name> <name>` Removing programs or orphans
`sudo pacman -Rs <package>` Also remove dependencies
`sudo pacman -Rns <package>` Also remove dotfiles of the program (config files)
`sudo pacman -Rns $(pacman -Qtdq)` Remove all orphan packages automatically

# Find leftovers
`find ~/.config ~/.cache ~/.local/share -iname "*PROGRAM-NAME*" 2>/dev/null`

## Main repository
`pacman -Qn` Installed from main repository
`pacman -Qm` Installed from AUR

# Upgrade 
`sudo pacman -Syu`

# Config
`sudo vim /etc/pacman.conf`
