#!/bin/bash
# MJVim config for linux
# Last updated - 20230227

# ---
# Go to user directory
cd ~

# Check if .vimrc is aready created.
FILE=~/.vimrc
if test -f "$FILE"; then
	echo "$FILE already exists! can't set custom profile."
else
		echo "$FILE does not exists."
		sleep 1
		echo "Creating .vimrc file..."
		touch ~/.vimrc
		sleep 2
		if test -f "$FILE"; then
			echo "$FILE created successfully."
				# If file created setting vim configs.
				if test -f "$FILE"; then
					echo "Applying config to local .vimrc file..."
					echo "syntax on" >> ~/.vimrc
					echo "set number" >> ~/.vimrc
					echo "set undodir=~/.vim/undodir" >> ~/.vimrc
					echo "set undofile" >> ~/.vimrc
					echo "set tabstop=3" >> ~/.vimrc
					echo "set softtabstop=3" >> ~/.vimrc
					echo "set shiftwidth=3" >> ~/.vimrc
					echo "set backspace=indent,eol,start" >> ~/.vimrc
					sleep 1
					echo "Applied successfully."
				fi
		else
			echo "$FILE could not be created."
		fi
fi
