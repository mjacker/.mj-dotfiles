# Pacman

Refresh cache for repositories
pacman -Syy

`-S` sinc
`-y` refresh package database
`-y` force it to refresh the local database even if it already refresh
cat /etc/pacman.d/mirrorlist

# Pacman S - Sync - Installing packages
`sudo pacman -S htop`

# Pacman R - Removing installed packages
Remove package
`sudo pacman -R htop`

also remove dependencies
`sudo pacman -Rs <package>`

also remove dotfiles of the program
`sudo pacman -Rns <package.

Removing orphans
`sudo pacman -R <name> <name> <name>`


# Pacman S - search
Searching packaga-name by command
`sudo pacman -Ss pygame`

# Pacman Sc
`sudo pacman -Sc` Remove all other packages from cache.

# Pacman Q - querry
`pacman -Q` List Installed packages
`pacman -Qe` List Installed packages, user-installed
`pacman -Qeq` List Installed packages, user-installed, (without showing versions)
`pacman -Qd` List Installed packages, as dependencies
`pacman -Qi | grep -E 'Name|Reason'` List Installed packages, as dependencies
`pacman -Ql` List package files
`pacman -Qdt` List orphan packages

## Main repository
`pacman -Qn` Installed from main repository
`pacman -Qn` Installed from AUR



# Upgrade 
`sudo pacman -Syu`

# Config
`sudo vim /etc/pacman.conf`
