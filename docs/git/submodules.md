# Sudmodules
Submodules allow you to keep a Git repository as a subdirectory of another Git repository. This lets you clone another repository into your project and keep your commits separate.

Adding a submodule:
`git submodule add https://github.com/example/foo.git`

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


### How to update after cloning just the main repo

```
git clone https://github.com/mjacker/MJCSIE
git submodule  update --init
```
