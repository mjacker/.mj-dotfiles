# pipewire -install


1. Check available audio devices (sinks)

`pactl list short sinks`

`<id1> name`
`<id2> name`

2. Set USB as default audio output
`pactl set-default-sink <id2>`

# option b WirePlumber

`wpctl status`


3. Suppresion error

The mod.rt warnings like:

`RTKit error: org.freedesktop.DBus.Error.ServiceUnknown`

```
sudo pacman -S rtkit
sudo systemctl enable --now rtkit-daemon
```
