# Samba

`sudo pacman -S samba` Install
`sudo nano /etc/samba/smb.conf` Configure
```
[Shared]
   path = /home/mjacker/shared
   browseable = yes
   writable = yes
   guest ok = yes
   read only = no
```


# uninstall

`sudo systemctl stop smb nmb`
`sudo systemctl disable smb nmb`
`sudo pacman -Rns samba`

Some leftover Samba files
```
sudo rm -rf \
  /var/lib/samba \
  /var/cache/samba \
  /var/run/samba
```
