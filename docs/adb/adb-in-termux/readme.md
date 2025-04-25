# Adb in termux

Installing adbd: `apt install android-tools`
> WARN: this provoque an "CANNOT LINK EXECUTABLE"
> Fixed with : `pkg update && pkg upgrade`

Phone B
`adb start-server`

Enable ADB over WIFI ( for rooted devices)
setprop service.adb.tcpc.port 5555
stop adbd
start adbd
> not tested
