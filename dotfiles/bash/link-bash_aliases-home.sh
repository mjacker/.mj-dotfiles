#!/bin/bash

set -e

DOTFILE_PATH="${HOME}/.mj-dotfiles/dotfiles/bash/.bash_aliases"
TARGET="$HOME/.bash_aliases"

# Remove existing link or file if needed
if [ -e "$TARGET" ] || [ -L "$TARGET" ]; then
    echo "Removing existing $TARGET"
    rm -f "$TARGET"
fi

# Create symlink
echo "Linking $DOTFILE_PATH → $TARGET"
ln -s "$DOTFILE_PATH" "$TARGET"

# Source it into the current shell (only works if run via source)
if [ "$0" = "$BASH_SOURCE" ]; then
    echo "⚠️  To activate the aliases in this shell, run:"
    echo "    source ~/.bash_aliases"
else
    echo "Sourcing ~/.bash_aliases"
    source ~/.bash_aliases
fi
