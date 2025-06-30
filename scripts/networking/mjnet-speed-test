#!/bin/bash

# Function to install Speedtest CLI (Official Ookla version)
install_speedtest() {
    echo "Speedtest CLI not found. Installing..."
    sudo apt-get update
    sudo apt-get install -y gnupg1 apt-transport-https dirmngr curl
    curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
    sudo apt-get install -y speedtest
}

# Check if 'speedtest' command is available
if ! command -v speedtest &> /dev/null; then
    install_speedtest
else
    echo "Speedtest CLI is already installed."
fi

# Run the speed test
echo "Running speed test..."
speedtest
