## Example to connect throuht ssh
`ssh -p 9922 root@localhost`

## How to transfer a file to my virtual machine in ssh connection
scp -rp fn 10.0.2.18:/path/where/you/want/to/transfer/to/in/virtual/machine

## Download a file from virtual box linux to windows
to upload
c:\pscp c:\some\path\to\a\file.txt user@remote:\home\user\some\path\newname.txt
To download a file from a remote server to your computer:

c:\pscp user@remote:\home\user\some\file.txt c:\some\path\to\a\
