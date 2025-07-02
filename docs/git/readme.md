# Git Command Cheatsheet

A practical and clean reference for essential Git commands. This guide includes common tasks such as initializing a repository, working with branches, configuring Git, and managing remotes.

---

## 📂 General Usage

### Initialize Repository

```bash
git init
```

### Add and Commit Files

```bash
git add .
git commit -m "starting git"
```

### Set Remote and Push to Branch

```bash
git remote add origin https://github.com/mjacker/nameBranch.git
git push --set-upstream origin nameBranch
```

---

## 🌿 Branches

### Delete Local Branch

```bash
git branch --delete <branch-name>
```

### Add a Description to the Current Branch

```bash
git branch --edit-description
```

### Show Description of a Specific Branch

```bash
git config branch.<branch-name>.description
```

### See Current Branch Details (Upstream and Tracking)

```bash
git branch -vv
```

### Get Current Branch Name

```bash
git rev-parse --abbrev-ref HEAD
```

---

## 📜 Commit History

### Visualize Commit Graph

```bash
git log --graph --all --oneline
```

---

## 📁 Getting Information

### List All Files Tracked in `master`

```bash
git ls-tree -r --name-only master
# -r = recursive
```

### Get Remote URL

```bash
git config --get remote.origin.url
```

### Show Full Remote Info

```bash
git remote show origin
```

---

## ⚙️ Configuration

### View Git Config

```bash
git config --list
```

### Set Global Text Editor

```bash
git config --global core.editor "nano -w"
# or
git config --global core.editor "vim"
```

---

## 🌐 Remote Repositories

### Display All Remote URLs

```bash
git remote -v
```

### Remove Remote

```bash
git remote remove origin
```

### Add Remote

```bash
git remote add origin https://github.com/username/repository.git
```

### Update Existing Remote URL

```bash
git remote set-url origin https://github.com/username/new-repo.git
```

### Inspect a Remote

```bash
git remote show origin
```

---

## 🌍 Remote Branches

### Pull a Remote Branch to a New Local Branch

```bash
git checkout -b myBranchName repo2/master
```

### Delete Remote Branch

```bash
git push --delete <remote-name> <branch-name>
```

---

## 🧪 Miscellaneous

### Show First (Initial) Commit

```bash
git rev-list --max-parents=0 HEAD
```

---

## 🔗 Resources

- [Official Git Documentation](https://git-scm.com/doc)
- [Git Branching Guide](https://learngitbranching.js.org/)
- [Learn Git with animations](https://learngitbranching.js.org/)
