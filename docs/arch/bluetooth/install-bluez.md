# Bluez service for bluetooth

installing
`sudo pacman -S bluez bluez-utils`

enable service
```
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
```

Open interactive promt
`bluetoothctl`

Basics
```
power on        # turns on the Bluetooth controller
agent on        # enables the default agent (for pairing auth)
default-agent   # makes it the default agent
scan on         # starts scanning for nearby devices
scan off        # stops scanning
``` 


```
pair XX:XX:XX:XX:XX:XX     # pair with device
trust XX:XX:XX:XX:XX:XX    # mark device as trusted (auto-connect)
connect XX:XX:XX:XX:XX:XX  # connect to device
disconnect XX:XX:XX:XX:XX:XX # disconnect device
```
