#!/bin/bash

continue_yes_no(){
  local input="$1"
  local answer

  while true; do 
    read -rp "$input (yYnN): " answer

    case "$answer" in 
      [yY]) return 0 ;;
      [nN]) return 1 ;;
    esac
  done
}

if continue_yes_no "Do you want a folder tmp in current directory?"; then 
  mkdir -p tmp
  echo "Directory created."
else
  rmdir tmp 
  echo "Directory deleted."
fi

