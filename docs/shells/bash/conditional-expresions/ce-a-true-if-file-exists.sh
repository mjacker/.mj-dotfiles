#!/usr/bin/bash
MYFILE="file.txt"
if [ -a file.txt ];then 
  echo "The file $MYFILE does exits." 
else
  echo "The file $MYFILE does not exits." 
fi
