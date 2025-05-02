# Sudmodules
Submodules allow you to keep a Git repository as a subdirectory of another Git repository. This lets you clone another repository into your project and keep your commits separate.

Adding a submodule:
`git submodule add https://github.com/example/foo.git`

Adding a submodule with a DesiredFolder name
`git submodule add https://github.com/example/foo.git DesiredFolderName`

Status
`git submodule status`

```
+<hash> name --> this has changes
 <hash> name 
```

Update the submodules
`git submodule update --remote`

Deleting a submodule from current folder.

`git rm <folder>`

## Change submodule URL from HTTPS to SSH

`git config -f git config -f .gitmodules submodule.docs/vim.url git@github.com:mjacker/MJVim.git`

`git submodule sync`


### How to update after cloning just the main repo

```
git clone https://github.com/mjacker/MJCSIE
git submodule  update --init
```
