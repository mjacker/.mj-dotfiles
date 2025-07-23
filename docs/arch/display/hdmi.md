# display hdmi 

1. Install
`sudo pacman -S xorg-xrandr`

2. List Displays
`xrandr`

# configurations
Set Screen Resolution
`xrandr --output eDP-1 --mode 1920x1080`

Rotate Display
`xrandr --output eDP-1 --rotate left`

Scale
`xrandr --output eDP-1 --scale 1.5x1.5`



# External Monitor
`xrandr --output HDMI-1-0 --auto --right-of eDP-1`
```
--right-of
--left-of
--above
--below
--same-as 
```

set off
`xrandr --output HDMI-1 --off`

super + o: to switch between displays
