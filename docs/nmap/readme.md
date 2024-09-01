# Nmap command examples

nmap 192.168.1.1 port scan against a target to discover open ports
nmap 192.168.1.1 192.168.1.2 scan multiple target hosts
nmap 192.168.1-10 scan a range of IP addresses.
nmap 192.168.1.0/24 scan an entire subnet
nmap -p 22,80,443 192.168.1.1 scan specifig ports
nmap -O 192.168.1.1 detect operating system and version
nmap -sV 192.168.1.1 detect service type/version for each open port
nmap -A 192.168.1.1 aggresive scan.
nmap -sn 192.168.1.1 check if the target is online without port scan
nmap -Pn 192.168.1.1 scan without ping. 
nmap -sU -p 53 192.168.1.1 scan with UDP probes
nmap -T4 192.168.1.1 scan with specifig timit template (0-5)
nmap -oX output.xml 192.168.1.1 output to a file in multiple formats
nmap --script=<script> 192.168.1.1 run specifig NSE scripts
nmap -D <decoy-IP> 192.168.1.1 scan with spoofed source IP address
nmap -f 192.168.1.1 scan with fragmented packets to evade IDS/IPS
nmap 192.168.1.0/24 --exclude 192.168.1.10 exclude expecific targets
nmap -e eth0 192.168.1.1 scan using a specifig network interface
