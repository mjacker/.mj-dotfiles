#!/bin/bash

main_menu() {
  options=("Install" "Update" "Remove" "Exit")
  choice=$(printf "%s\n" "${options[@]}" | fzf --height 10 --reverse --border --prompt="Choose an action: ")

  case "$choice" in
    Install) echo "Installing..." ;;
    Update) echo "Updating..." ;;
    Remove) echo "Removing..." ;;
    Exit) echo "Bye!" ;;
    *) echo "No valid choice." ;;
  esac
}

main_menu

