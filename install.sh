#!/bin/bash

programs_minimal=( \
	"curl" \
	"vim" \
	"git")

programs=( \
	"curl" \
	"nala" \
	"neovim" \
	"tmux" \
	"git")

# apt install git vim tmux htop
command_exists() {
	command -v "$1" > /dev/null 2>&1
}

install_package(){
	echo "$1"
	echo "------"
	if command_exists nala; then
		echo "Package manager: nala"
		if command_exists $1; then
			echo "command $1 installed"
		else
			echo "command $1 missing. Installing.."
			nala install -y "$1"
		fi
	elif command_exists apt-get; then
		echo "Package manager: apt-get:"
		if command_exists $1; then
			echo "command $1 installed"
		else
			echo "command $1 missing. Installing.."
			apt-get install -y "$1"
		fi
	elif command_exists pkg; then
		echo "Package manager: apt-get:"
		if command_exists $1; then
			echo "command $1 installed"
		else
			echo "command $1 missing. Installing.."
			pkg install -y "$1"
		fi
	else
		echo "Unable to install, packaga not supported."
		return 1
	fi
}

# Check if at least one argument is provided
if [ $# -gt 0 ]; then
    if [ "$1" == "--minimal" ] || [ "$1" == "-m" ]; then
	    for program in "${programs_minimal[@]}"; do
		install_package $program
	    done
    fi
else
    if command_exists nala; then
    	echo "Package manager: nala"
    	nala update && nala upgrade -y
    elif command_exists apt-get; then
	apt-get update && apt-get upgrade -y
    fi
    for program in "${programs[@]}"; do
	install_package $program
    done
fi

