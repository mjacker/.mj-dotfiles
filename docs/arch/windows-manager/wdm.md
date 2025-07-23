# wdm

## 1. Installing
1. Installing wdm from repository source

`git clone https://git.suckless.org/dwm`

`cd dwm`

copy definitions config.h
`cp config.def.h config.h`

Makefile run 
`make`
`sudo make install`

## 2. Config

go to the folder were dwm was clone

edit the file `config.h`

restart 

`super + shift + q`

Conpile and install
`sudo make clean install`


## Patches

Download the patch
`wget https://dwm.suckless.org/patches/systray/dwm-systray-20230922-9f88553.diff`

Apply the patch
`patch -p1 < dwm-systray-20230922-9f88553.diff`

