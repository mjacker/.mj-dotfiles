#!/bin/bash

echo "Enter a number (1-3): "
read choice

case "$choice" in
  1)
    echo "You chose option 1"
    ;;
  2)
    echo "You chose option 2"
    ;;
  3)
    echo "You chose option 3"
    ;;
  *)
    echo "Invalid option"
    ;;
esac

