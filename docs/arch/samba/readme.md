# Samba server in arch

`sudo pacman -S samba` Install samba

> extra/cifs-utils   7.4-1          0.28 MiB       0.10 MiB
> extra/ldb          2:4.23.5-1     2.14 MiB       0.45 MiB
> extra/libbsd       0.12.2-2       0.33 MiB       0.16 MiB
> extra/libmd        1.1.0-2        0.10 MiB       0.05 MiB
> extra/libwbclient  2:4.23.5-1     0.12 MiB       0.04 MiB
> extra/smbclient    2:4.23.5-1    28.39 MiB       7.07 MiB
> extra/talloc       2.4.3-2        0.17 MiB       0.05 MiB
> extra/tevent       1:0.17.1-2     0.21 MiB       0.06 MiB
> extra/samba        2:4.23.5-1    62.22 MiB       8.45 MiB

`mkdir ~/shared` Create a shared folder
`sudo vim /etc/samba/smb.conf` Configure

```
sudo cat /etc/samba/smb.conf 
[Shared]
   path = /home/YOURUSERNAME/shared
   browseable = yes
   writable = yes
   guest ok = yes
   read only = no
```

`sudo smbpasswd -a YOURUSERNAME` update password


`sudo systemctl enable --now smb nmb` Start service

`sudo ufw allow samba` If firewall 


` \\ARCH-IP-ADDRESS\` from windows
