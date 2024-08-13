# Add another git folder into a git folder
The objective is to append all files and old logs from the previus git
to the new git

1. copy old git folder (root/master) to a folder inside a new git folder.

2. run command
`git subtree add -P <prefix> <repo> <rev>`

example
`git subtree add -P ZZZ /path/to/XXX.git master`

