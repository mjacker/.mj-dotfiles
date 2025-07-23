# tailscale

1. Install Tailscale
`sudo pacman -S tailscale`

2. Start and enable the Tailscale service
`sudo systemctil enable --now tailscaled`

3. Authenticate and Connect
`sudo tailscale up`

4. Check Connection
`tailscale status`

5. Disconnect from Tailscale
`sudo tailscale down`
