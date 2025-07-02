#!/bin/bash
set -a   # Enable automatic export
MYVAR1="hello1"
MYVAR2="world1"
set +a   # Disable automatic export
MYVAR3="hello2"
MYVAR4="world2"

env | grep MYVAR   # only MYVAR1 and MYVAR2 will be found in the environment

