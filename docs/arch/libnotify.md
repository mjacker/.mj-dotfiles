# notifications in arch

1. to install
`sudo pacman -S libnotify`

2. run a test notification
`notify-send "Test notification " "a test form bash"`

3. Adding icon, urgency, or timeout
`notify-send -i dialog-information -u normal -t 5000 "Info" "This is a 5 seconds notification."
> `-u`: low, normal, critical
> `-t`: timeout in miliseconds
