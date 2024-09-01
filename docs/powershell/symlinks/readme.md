# Softlinks and Hard links in Powershell examples
For some reasons, those command requires admin privileges.

Firt create a file in the current directory
`echo "Hello world" > myfile.txt`

To create the symbolic link (soft-link):
`New-Item -Name soft-link.txt -ItemType SymbolicLink -Target .\myfile.txt`

To create the hard link:
`New-Item -Name hard-link.txt -ItemType SymbolicLink -Target .\myfile.txt`
