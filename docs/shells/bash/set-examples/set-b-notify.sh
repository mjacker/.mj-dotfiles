#!/bin/bash

# Enable immediate job notifications
set -b   # or: set -o notify

# Start a background job
sleep 10 &

# you can execute other commands
# then after 10 seconds you will get a 
# [1]+  Done       sleep 10
