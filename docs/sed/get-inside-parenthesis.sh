#!/bin/bash
echo "This is whatever before (/this/is/my/path/to/script.sh) this is whatever after" | \
  sed -n 's/.*(\(.*\)).*/\1/p'
