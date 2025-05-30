#!/bin/bash

a_flag=false
b_flag=false
c_flag=false

while getopts "abc" opt; do
  case $opt in
    a) a_flag=true ;;
    b) b_flag=true ;;
    c) c_flag=true ;;
    \?) echo "Invalid option: -$OPTARG" >&2 ;;
  esac
done

if [[ $OPTIND -eq 1 ]]; then
  echo "Usage: $0 [-a] [-b] [-c]"
  echo "  -a    Do action A"
  echo "  -b    Do action B"
  echo "  -c    Do action C"
  exit 1
fi

# Respond to passed flags
if $a_flag; then echo "Flag -a was passed"; fi
if $b_flag; then echo "Flag -b was passed"; fi
if $c_flag; then echo "Flag -c was passed"; fi
