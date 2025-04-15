#!/bin/bash
echo "Press [yY] to print YES."
echo "Press [nN] to print NO."
echo "Press [x] to exit."

# `=~` this is a regex format

while true; do
  read -n 1 -s char

  if [[ "$char" =~ [yY] ]]; then
    echo "YES"
  fi

  if [[ "$char" =~ [nN] ]]; then
    echo "NO"
  fi

  if [[ "$char" =~ [xX] ]]; then
    exit 0
  fi
done

