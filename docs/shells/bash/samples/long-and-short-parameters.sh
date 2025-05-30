#!/bin/bash

build_flag=false
b_flag=false

# Show help if no arguments are passed
if [[ $# -eq 0 ]]; then
  echo "Usage: $0 [OPTIONS]"
  echo "  -b           Short flag for build"
  echo "  --build      Long flag for build"
  echo "  -ab          Grouped short flags"
  exit 1
fi

# Manual parsing
while [[ $# -gt 0 ]]; do
  case "$1" in
    -b) b_flag=true ;;
    --build) build_flag=true ;;
    -*) # Handle grouped short flags like -ab
      chars="${1:1}"  # Remove leading "-"
      for (( i=0; i<${#chars}; i++ )); do
        case "${chars:$i:1}" in
          b) b_flag=true ;;
          *) echo "Unknown flag: -${chars:$i:1}" ;;
        esac
      done
      ;;
  esac
  shift
done

# Output flags
if $b_flag; then echo "Flag -b was passed"; fi
if $build_flag; then echo "Flag --build was passed"; fi

