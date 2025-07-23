# pipewire-get-set

Target the current sound device
`wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.7`
`wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+`


show devices
`wpctl status`

Set volume target manually
`wpctl set-volume 63 0.7`
`wpctl set-volume 63 0.1+`

Changing default sink
`wpctl set-default 65`

Move stream audio to another sink
`wpctl move-stream 72 65`
