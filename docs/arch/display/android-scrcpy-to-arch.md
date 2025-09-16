# scrcpy
sudo pacman -S scrcpy

# android

Requirements
- "USB Debugging"
- "USB debugging(Security setting)
    > Additional settings/Developer options/Debugging, 
    > to capture the click/tap from the windows.


# arch

> not needed!
> enable tcp
> `sudo vim /etc/X11/xinit/xserverrc`
> 
> ```xserverrc
> exec /usr/bin/X -listen tcp "$@"
> ```
> > change -nolisten with -listen


To use scrcpy need to be connected over adb
`adb devices`

Optional tcpip
`adb tcpip 5555`
`adb connect <android_ip>:5555`



> not needed
> # Cookies
> 
> from arch:
> `xauth list $DISPLAY`
> 
> adding cookies to termux
> if .Xauthority does not exits
> touch ~/.Xauthority
> 
> `xauth add mjacker/unix:2 MIT-MAGIC-COOKIE-1 <secret-cookie>

# Start conecxion

`scrcpy`

With display off
`scrcpy --turn-screen-off`


