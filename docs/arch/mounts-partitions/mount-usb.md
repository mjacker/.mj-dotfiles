# mount usb

check available devices
`lsblk -f`
> check for something like
> sdb      ...
> └─sdb1   vfat   MYUSB   ...

create a mount point
`sudo mkdir -p /mnt/usb`

mount for usb

- For FAT32 or exFAT:
`sudo mount -t vfat /dev/sdb1 /mnt/usb`

- NTFS
`sudo mount -t ntfs /dev/sdb1 /mnt/usb`


# to Unmount

Check if device is busy

`lsof +D /mnt/usb`

`sudo umount </mnt/device | /path/to/mount/folder>`


# to Forma1
1. Check if device is busy

`lsof +D /mnt/usb`

1. Unmount if mounted
`sudo unmount <device>`

1. Wipe old partition
`sudo wipefs -a /dev/<device: sdb>`

1. Create a new partition table (GPT or MBR)
`sudo parted /dev/sdb`
`(parted) mklabel msdos`
> optional
> You can also use gpt instead of msdos if you’re planning to use modern systems and need UEFI boot support.
> `(parted) mkpart primary fat32 1MiB 100%`

`(parted) quit`

1. Formating options
    Install: `sudo pacman -S exfatprogs ntfs-3g dosfstools`

    FAT32 (good for compatibility)
    `sudo mkfs.vfat -F32 /dev/sdb1`

    NTFS (good for large files and Windows)
    `sudo mkfs.ntfs /dev/sdb1`

    ext4 (best for Linux use only)
    `sudo mkfs.ext4 /dev/sdb1`

    exFAT (good for large files and cross-platform use)
    `sudo mkfs.exfat /dev/sdb1`

1. Label the drive
For FAT32 or exFAT: `sudo fatlabel /dev/sdb1 MYUSB`
For NTFS: `sudo ntfslabel /dev/sdb1 MYUSB`
For ext4: `sudo e2label /dev/sdb1 MYUSB`

1. Show custom data by columns
`lsblk -o NAME,SIZE,FSTYPE,LABEL,UUID`

1. Mount the drive
`sudo mkdir -p /mnt/usb`
`sudo mount /dev/sdb1 /mnt/usb`
