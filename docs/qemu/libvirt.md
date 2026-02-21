# libivirt 

# Path

`/var/lib/libvirt/images/` Images
`/etc/libvirt/qemu/` Definitions

# Installation
`sudo pacman -Syu qemu libvirt virt-manager edk2-ovmf`
`sudo pacman -S qemu libvirt virt-install`

qemu-full: User-space KVM emulator. 
libvirt: Middleware for managing virtualization. 
virt-manager: GUI for managing VMs. 
edk2-ovmf: UEFI firmware (OVMF) for UEFI boot support. 
dnsmasq: DHCP and DNS server for virtual networks. 
swtpm: TPM emulator for secure VMs.


`sudo pacman -Ss libvirt`: Install
`systemctl start libvirtd`: Start service


`sudo usermod -aG libvirt $USER`: Allow your user to manage VM

## required:
`sudo pacman -S nftables`

`sudo nvim /etc/nftables.conf`
```
#!/usr/sbin/nft -f

flush ruleset
```

`sudo nvim /etc/libvirt/network.conf`
> Add the line `firewall_backend = "iptables"`

Restart service
`sudo systemctl restart nftables`

`sudo nft flush ruleset`

```
sudo modprobe iptable_mangle
sudo modprobe iptable_filter
sudo modprobe ip_tables
sudo modprobe x_tables
```


# Conenct to qemu:///system
`virsh --connect qemu:///system uri` 

# Make sure Defulat network exists
`virsh net-list --all`: List all
`sudo virsh --connect qemu:///system net-list --all`

Create a default network
`sudo virsh --connect qemu:///system net-start default`
`sudo virsh --connect qemu:///system net-autostart default`

> without sudo may not work
> ```
> virsh net-start default
> virsh net-autostart default
> ```


# Change libvirt subnet

`sudo virsh net-edit default` If not vi installed
`sudo EDITOR=vim virsh net-edit default`

```
<network>
  <name>default</name>
  <uuid>75843300-274a-40b5-9169-7e4049263a8c</uuid>
  <forward mode='nat'/>
  <bridge name='virbr0' stp='on' delay='0'/>
  <mac address='52:54:00:15:18:59'/>
  <ip address='192.168.200.1' netmask='255.255.255.0'>
    <dhcp>
      <range start='192.168.200.2' end='192.168.200.254'/>
    </dhcp>
  </ip>
</network>
```

```
sudo virsh net-destroy default
sudo virsh net-start default


# change dnsmasq interface 

`sudo nvim /etc/dnsmasq.conf`
```
interface=YOUR_REAL_INTERFACE
bind-interfaces
```
> like enp3s0, wlp2s0

> check the binding 
>>tcp   LISTEN 0      32                          <IP>:53         0.0.0.0:*    users:(("dnsmasq",pid=54474,fd=5))   


```
sudo virsh net-start default
sudo virsh net-autostart default
```

#  Fix iso permision
```
sudo mkdir -p /var/lib/libvirt/images/iso
sudo cp alpine-standard-3.23.0-x86_64.iso /var/lib/libvirt/images/iso/
```

# Solve Warning, unable to connect to graphical console
Install virt-viewer
`sudo pacman -S virt-viewer`




# connect to VM Console
`virsh console alpine1`

# Shutdown
`sudo virsh shutdown alpine1`

# Destroy
`sudo virsh destroy alpine1`

# Installation
`setup-alpine`

# After installation
Remove iso
`virsh change-media alpine1 hda --eject --config`

# Show all vm
`sudo virsh list --all`

# start VM
`sudo virsh start alpine1`


# Lyfecycle Manager
```
virsh start alpine1
virsh shutdown alpine1
virsh autostart alpine1
```


# Clone vm
```
virt-clone --original alpine1 --name alpine2 --auto-clone
virt-clone --original alpine1 --name alpine3 --auto-clone
```
