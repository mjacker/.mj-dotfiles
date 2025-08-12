# Mounting w10 partition

1. Find partition
`lsblk -f`

2. Create a mount point
`sudo mkdir -p /mnt/windows`

3. Install NTFS support 
`sudo pacman -S ntfs-3g`

4. Mount windows partition
`sudo mount -t ntfs-3g /dev/sda1 /mnt/d`
