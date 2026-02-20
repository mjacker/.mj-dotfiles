# Installing Qemu - arch

[Official documentation](https://www.qemu.org/docs/master/system/target-i386.html)

# Qemu-base

`sudo pacman -S qemu-base`
Package (25)                    New Version  Net Change  Download Size

extra/capstone                  5.0.6-1       14.33 MiB       0.96 MiB
extra/dtc                       1.7.2-4        0.56 MiB       0.15 MiB
extra/edk2-ovmf                 202411-1      27.05 MiB       7.27 MiB
extra/fuse3                     3.17.1-1       0.48 MiB       0.13 MiB
extra/iniparser                 4.2.6-2        0.05 MiB       0.02 MiB
core/libaio                     0.3.113-3      0.04 MiB       0.02 MiB
extra/libcbor                   0.12.0-1       0.17 MiB       0.04 MiB
extra/libslirp                  4.9.1-1        0.16 MiB       0.07 MiB
extra/libtraceevent             1:1.8.4-1      0.39 MiB       0.16 MiB
extra/libtracefs                1.8.2-1        0.38 MiB       0.22 MiB
extra/liburing                  2.11-1         0.38 MiB       0.20 MiB
extra/libxdp                    1.5.5-1        0.18 MiB       0.06 MiB
extra/libyaml                   0.2.5-3        0.18 MiB       0.06 MiB
extra/ndctl                     79-1           0.94 MiB       0.37 MiB
extra/numactl                   2.0.19-1       0.24 MiB       0.08 MiB
extra/qemu-common               10.0.3-1       4.44 MiB       1.88 MiB
extra/qemu-img                  10.0.3-1      10.56 MiB       2.12 MiB
extra/qemu-system-x86           10.0.3-1      50.32 MiB       5.92 MiB
extra/qemu-system-x86-firmware  10.0.3-1       0.12 MiB       0.02 MiB
extra/rdma-core                 58.0-1         9.79 MiB       2.45 MiB
extra/seabios                   1.17.0-1       1.04 MiB       0.17 MiB
extra/vde2                      2.3.3-8        0.69 MiB       0.20 MiB
extra/virtiofsd                 1.13.2-1       2.57 MiB       0.93 MiB
extra/wolfssl                   5.8.2-1        4.11 MiB       0.91 MiB
extra/qemu-base                 10.0.3-1       0.05 MiB       0.01 MiB

Total Download Size:    24.41 MiB
Total Installed Size:  129.21 MiB


# Installing gtk3 for graphical interface

`sudo pacman -S gtk3`
`sudo pacman -S qemu-desktop`

# Networking

## -net user (default NAT)
Just a outbound internet, and not sharing with host/LAN:
`-netdev user,id=net0 -device e1000,netdev=net0`



## -netdev bridge for LAN integration




## When VM is running

help
`control + a, ?`

detach from VM
`control + a, d`

Terminate VM
`control + a, x`


