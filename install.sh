#!/bin/bash

programs_minimal=( \
	"curl" \
	"vim" \
	"git")

programs=( \
	"curl" \
	"nala" \
	"vim" \
  # "neovim" \ # I am using a neovim pre-released >= 0.8.0, install from shell
	"tmux" \
	"git" \
	# "wl-clipboard" \ # This install gcc and x11, 126 packages 300mb 
    # now i can not copy text from vim :c
	"gnupg" \
	"pass" \
	"fzf" \
	"w3m" \
   # for lua = gcc
  "build-essential" \
	)

installers=( \
  "nala" \
  "apt-get" \
  "pkg" \
)
command_exists() {
	command -v "$1" >/dev/null 2>&1
}

missing() {
    printf "\e[31m$1\e[0m\n"
}

info() {
    printf "$1\n"
}

warn() {
    printf "⚠️  \e[33m$1\e[0m\n"
}

select_installer() {
  for i in "${installers[@]}"; do
    if ! command -v $i >/dev/null; then
        warn "$i not installed!.\n"
    else
      installer=$i
      return 0
    fi
  done
  info "Intaller selected is $installer"
}

update_installer() {
  $installer update && $installer upgrade
}

install_apps(){
  for program in "${programs[@]}"; do
    if command_exists $program; then
      echo "command $program installed."
    else
      missing "command $program missing."
      warn "Installing..."
      $installer install -y $program
      if [ $program = "nala" ]; then
        select_installer
      fi 
    fi
  done
}

select_installer
update_installer
install_apps


# # Check if at least one argument is provided
# if [ $# -gt 0 ]; then
#     if [ "$1" == "--minimal" ] || [ "$1" == "-m" ]; then
# 	    for program in "${programs_minimal[@]}"; do
# 		    install_package $program
# 	    done
#     fi
# else
#     if command_exists nala; then
#     	echo "Package manager: nala"
#     	nala update && nala upgrade -y
#     elif command_exists apt-get; then
# 	apt-get update && apt-get upgrade -y
#     fi
#     for program in "${programs[@]}"; do
# 	install_package $program
#     done
# fi
# 
