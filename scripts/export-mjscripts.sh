#!/usr/bin/bash
# Required in ~/.bashrc
# # export-mjscripts
# if [ -f $HOME/.mj-dotfiles/scripts/export-mjscripts.sh ]; then
#   source "$HOME/.mj-dotfiles/scripts/export-mjscripts.sh"
# fi

# Add ~/.mj-dotfiles/scripts and all subfolders to PATH
MJ_SCRIPTS="$HOME/.mj-dotfiles/scripts"

if [ -d "$MJ_SCRIPTS" ]; then
  for dir in "$MJ_SCRIPTS"/*/ "$MJ_SCRIPTS"/; do
    # Check if it's a directory
    [ -d "$dir" ] || continue

    # Remove trailing slash (optional, for cleaner comparison)
    dir="${dir%/}"

    # Only add if not already in PATH
    case ":$PATH:" in
      *":$dir:"*) ;;
      *) export PATH="$dir:$PATH" ;;
    esac
  done
fi

# # Original
# if [ -d "$HOME/.mj-dotfiles/scripts" ] && [[ ":$PATH:" != *":$HOME/.mj-dotfiles/scripts:"* ]]; then
#   echo "Just exported the mjscripts!."
#   export PATH="$HOME/.mj-dotfiles/scripts:$PATH"
# fi
