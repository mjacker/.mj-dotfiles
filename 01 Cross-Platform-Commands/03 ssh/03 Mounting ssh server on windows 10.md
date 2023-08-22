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
