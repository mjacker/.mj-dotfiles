#!/bin/bash

TOUCHPAD="ELAN1200:00 04F3:30BA Touchpad"
STATE=$(xinput list-props "$TOUCHPAD" | grep "Device Enabled" | awk '{print $4}')

if [ "$STATE" -eq 1 ]; then
    xinput disable "$TOUCHPAD"
    notify-send "Touchpad disabled"
else
    xinput enable "$TOUCHPAD"
    notify-send "Touchpad enabled"
fi

