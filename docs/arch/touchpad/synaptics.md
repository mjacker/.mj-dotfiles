# install and config touchpad synaptics

1. Install 
`sudo pacman -S xf86-input-synaptics`

2. Modify or create the file `/etc/X11/xorg.conf.d/70-synaptics.conf`

```
Section "InputClass"
    Identifier "touchpad"
    Driver "synaptics"
    MatchIsTouchpad "on"
    Option "TapButton1" "1"
    Option "TapButton2" "3"
    Option "TapButton3" "2"
    Option "VertTwoFingerScroll" "on"
    Option "HorizTwoFingerScroll" "on"
EndSection   
```

3. Restart Windows manager (like sddm, wdm, etc)

3. Check driver usage
`grep -i synaptics /var/log/Xorg.0.log` 

4. Vertical or Horizontal reverse scroll

```
    Option "VertScrollDelta" "-111"
    Option "HorizScrollDelta" "-111"
```
