# First try: FAIL
# Mounting a ssh server on windows 10.
- Go to Setting > Apps > Apps & Feature > Optional feacturea > OpenSSH server.

- Binaries are installed in %WINDIR%\System32\OpenSSH.

	> For older version of windows
	> https://github.com/PowerShell/Win32-OpenSSH/releases

- Configuration file `sshd_config` and host keys are installed to %ProgramData%\ssh (only after the server is started for the first time).

# Allow incoming conenctions to SSH server in Firewall
Run the command as the Administrator.
`New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH SSH Server' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22 -Program "C:\Windows\System32\OpenSSH\sshd.exe"`

# Start the service and/or configure automatic start:
Go to Control Panel > System and Security > Administrative Tools and open Services. Locate OpenSSH SSH Server service.

> (if it not listed, need to add this feacture in optional features.)

// intente conectar, pero me sale permission denied, please try again.


---
# Second try: Working
reference
https://tiim.ch/blog/2022-03-ssh-windows-wsl

Get online module:
`Get-WindowsCapability -Online | Where-Object Name -like "OpenSSh"`

Open pwsh with administrator rights
- Installing client and server 
`Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0`
`Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0`

- Enable the service
`Start-Service sshd`
`Set-Service -Name sshd -StartupType 'Automatic'`

- Configr the firewall rules.
```
if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {
    Write-Output "Firewall Rule 'OpenSSH-Server-In-TCP' does not exist, creating it..."
    New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
} else {
    Write-Output "Firewall rule 'OpenSSH-Server-In-TCP' has been created and exists."
}
```

# Set WSL as a default shell
New-ItemProperty -Path "HKLM:\SOFTWARE\OpenSSH" -Name DefaultShell -Value "C:\WINDOWS\System32\bash.exe" -PropertyType String -Force
