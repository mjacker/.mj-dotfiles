#!/bin/bash

programs=( \
	"curl" \
	"vim" \
	"git")

# apt install git vim tmux htop
command_exists() {
	command -v "$1" > /dev/null 2>&1
}

install_package(){
	echo "$1"
	echo "------"
	if command_exists apt-get; then
		echo "Package manager: apt-get:"
		if command_exists $1; then
			echo "command $1 installed"
		else
			echo "command $1 missing. Installing.."
			apt-get install -y "$1"
		fi
		#sudo apt-get update
	else
		echo "Unable to install, packaga not supported."
		return 1
	fi
}

for program in "${programs[@]}"; do
	install_package $program
done
