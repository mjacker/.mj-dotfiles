# Changing dns

Using nmcli
`nmcli device modify <your_device> ipv4.dns "127.0.0.1"`
`nmcli connection up <your_connection_name>`

Reverting change on dns

`nmcli device modify <your_device> ipv4.dns ""`
`nmcli connection down <device>`
`nmcli connection up <device>`
