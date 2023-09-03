# Use vim keybinds
set -o vi

# Git alias
alias glo="git log --all --oneline --graph --decorate"
alias gfp="git ls-tree -r --name-only master"

# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..="cd .."
alias ....="cd ../.."
alias ....="cd ../.."
alias ......="cd ../../.."

alias ll="ls -laho"
alias lm="ls | more"
alias la="ls -alFh --group-directories-firs"
alias cls="clear"

# Network
# alias ping="ping -c 10"

# space disk
alias df="df -h"
alias du="du -h"
alias free="free -mt"
alias psa="ps auxf"
alias cputemp="sensors | grep Core"

# MJalias
alias mja="cat ~/.bash_aliases"
alias emja="vim ~/.bash_aliases"
alias smja="source ~/.bash_aliases"
alias umja="~/.bash_update"

# Paths
# alias caps="cd /data/data/com.termux/files/home/mjtermux/01_mjcapstone/MJCapstone"

# Custom apps
alias w3g="w3m www.google.com"
alias w3d="w3m www.duckduckgo.com"
alias ly="lynx www.google.com"
