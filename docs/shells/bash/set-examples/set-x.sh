#!/bin/bash
set -x    # Turn on debugging (print commands before executing)
echo "Debugging is ON"
echo "--------------------"
ls 

set +x    # Turn off debugging
echo "Debugging is OFF"
echo "--------------------"
ls 
