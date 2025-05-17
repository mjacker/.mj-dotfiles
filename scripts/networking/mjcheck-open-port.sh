#!/usr/bin/bash

if [[ -z "$1" ]]; then
  echo "Usage: $0 <port>"
  echo "Example: $0 22"
  exit 1
fi

PORT="$1"
echo "Checking for applications using port: $PORT"

if command -v sudo >/dev/null 2>&1; then
  echo "Using: sudo lsof -i :$PORT"
  sudo lsof -i :"$PORT"
else
  echo "sudo not found. Falling back to netstat."
  netstat -an | grep "\.$PORT "
fi

