## Tagging
Is the ability to tag a specific point in a repository's history as bieng importa. Tipically, people use this functionality to mark release points (v1.0, v2.0 and so on).

---
### List your tags
`$ git tag`
`$ git tag -l "v1.*`

### Creating tags
`#git tag -a v1.4 -m "my version 1.4"`

### Show tag
`git show v1.4`

### Sharing Tags
`git push` doesn't transfer tags to remote server. Need to explicitly push tags to a shared server.
`git push origin <tagname>`

### Deleting Tags
`git tag -d <tagname>`

### Checking out Tags
`git checkout v2.0.0`

