#!/bin/bash
# MJVim config for linux
# Last updated - 20230227

# ---
# Go to user directory
cd ~

# Check if .vimrc is aready created.
FILE=~/.vimrc
if test -f "$FILE"; then
		echo "$FILE exists."
else
		echo "$FILE does not exists."
fi
