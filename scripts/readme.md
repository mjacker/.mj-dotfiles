# required check validation in ~/.bashrc
```
# export-mjscripts
if [ -f ~/.mj-dotfiles/bin/exports-mjbin.sh ]; then
  export PATH="~/.mj-dotfiles/scripts/:$PATH"
fi
```
