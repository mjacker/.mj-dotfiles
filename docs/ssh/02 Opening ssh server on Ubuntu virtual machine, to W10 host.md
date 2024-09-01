### Opening ssh server on ubuntu virtual machine, to host w10.

* check if ssh is already installed on Ubuntu OS
* install openssh-server
`sudo apt install openssh-server`

* Check ssh status service:
`sudo systemctl status ssh`

* Check SSH port in Firewall (if needed) and open ports
`sudo lsof -i -P -n | grep LISTEN`

> if you do not find the port 22 among open oprts, need to allow it in the firewall:

```
sudo ufw allow ssh
sudo ufw enable
sudo ufw status verbose
```

* get up service:
`sudo systemctl enable openssh`

* Port forwarding on virtual box, nat
Changing Adaptador 1 to NAT, port forwarding:
	- SSH
	- TCP
	-127.0.0.1
	- host port: 9222
	- 10.0.2.15
	- Guest port: 22

* connect:
```
ssh -p 9222 f11115107@127.0.0.1
```
