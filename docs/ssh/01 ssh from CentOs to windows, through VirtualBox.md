## Ssh from centOs to Windows, through VirtualBox
### VirtualBox config side
- Network config
- Add Port Forwarding Rules
- Example: 
SSH TCP 127.0.0.1 992 10.0.2.15 22

### CentOs side:
- nothing

### Windows side:
- `ssh -p 9922 root@localhost`:  with root access.
or
- `ssh -p 9922 user@localhost`: user access.


