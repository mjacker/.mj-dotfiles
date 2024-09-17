if command -v tmux &> /dev/null && \
	[ -n "$PS1" ] && \
	[[ ! "$TERM" =~ screen ]] && \
	[[ ! "$TERM" =~ tmux ]] && \
	[ -z "$TMUX" ]; then
  	# exec tmux
	# tmux a -t default || exec tmux new -s default && exit;
	tmux a || exec tmux 
fi

# Use vim keybinds
set -o vi

# Git alias
alias glo="git log --all --oneline --graph --decorate"
alias gfp="git ls-tree -r --name-only master"
alias gs='git status'
alias gsu='git status -u'
alias gd='git diff'

# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."

alias ll="ls -laho"
alias lm="ls | more"
alias la="ls -alFh --group-directories-firs"
alias cls="clear"
alias c="clear"
alias cc="clear"

# space disk
alias df="df -h"
alias du="du -h"
alias free="free -mt"
alias psa="ps auxf"
alias cputemp="sensors | grep Core"

# MJalias
alias mja="cat ~/.bash_aliases"
alias emja="vim ~/.bash_aliases"
alias smja="source ~/.bash_aliases && . ~/.bash_update"

# vim
# alias emjvim="vim ~/.vimrc"

# Custom apps
alias w3g="w3m www.google.com"
alias w3d="w3m www.duckduckgo.com"
#alias ly="lynx www.google.com"
