#!/usr/bin/bash
#for file in *; do
#  [ -f "$file" ] && echo "===== $file =====" && cat "$file"
#done

for file in *; do
  [ -f "$file" ] && echo -e "\033[1;34m===== $file =====\033[0m" && cat "$file"
done


