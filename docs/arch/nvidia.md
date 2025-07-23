# nvidia
1. Identify GPU model
`lspci | grep -i nvidia`

2. Install Driver
`sudo pacman -Syu nvidia`

3. Reboot
`sudo reboot`

4. Verify installation
`lsmod | grep nvidia`
`nvidia-smi`
