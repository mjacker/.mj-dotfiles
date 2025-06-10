#!/bin/bash

# Check if an argument is passed
if [ -z "$1" ]; then
    echo "Usage: $0 <gitlab-container-name>"
    exit 1
fi

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$1"
