# SSH into Termux from your Computer
1. Open Termux on your Android phone
2. Install OpenSSH
`pkg upgrade`
`pkg install openssh`
3. Set up a password:
`passwd`
4. Get suer
`whoami`
5. Find your network ip
`ifconfig`
6. start server
`sshd`


7. connect from your computer
`sshd <termux_username>@<andoir_ip> -p 8022
