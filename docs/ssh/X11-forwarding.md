# X11 forwarding

Test case scenario:

1. Android -> termux -> X11-Termux -> awesomedesktop
2. Arch with awesome desktop


# Objetive 

Openning an app from arch, but the display forwarding it 
to the X11-Termux display

# Steps

Make sure the feature X11Forwarding is set to 'yes' in `/etc/ssh/sshd_condif`

```
X11Forwarding yes
X11UseLocalhostno
```

In termux, run 
- one session with awesome, (to connect to DISPLAY:1)
- second session with ssh -Y to connect to arch (remote pc)

after logged, the command
`echo $DISPLAY`
should show `localhost:10.0`

if not, it may need to set it manually
`export DISPLAY=<phone-ip>:0` # or 1, depends the current number display


> This only fortwards the display, not the sound.

