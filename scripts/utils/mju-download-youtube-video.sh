#!/bin/bash

# Check if yt-dlp is installed
if command -v yt-dlp >/dev/null 2>&1; then
  yt-dlp -f best "$1" --verbose
else
  echo "yt-dlp is not installed. Do you want to install it? [y/N]"
  read -r choice

  case "$choice" in
    [yY][eE][sS]|[yY])
      echo "Installing yt-dlp..."
      sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
      sudo chmod a+rx /usr/local/bin/yt-dlp
      echo "yt-dlp installed successfully."
      yt-dlp -f best "$1" --verbose
      ;;
    *)
      echo "Installation aborted."
      exit 1
      ;;
  esac
fi

# 
# if command -v yt-dlp; then
#   yt-dlp -f best $1 --verbose
# else
#   echo "yt-dlp not installed. do you want to install it?"
#   read -r choosed
# 
#   if [[ choosed == [^y] ]]; then
#     sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
#     chmod a+rx /usr/local/bin/yt-dlp
#     yt-dlp -f best $1 --verbose
#   else 
#     exit 1
#   fi
# fi 
