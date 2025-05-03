#!/usr/bin/bash
MYDIRECTORY="mydirectory"
if [ -d $MYDIRECTORY ];then 
  echo "The file $MYDIRECTORY does exits." 
else
  echo "The file $MYDIRECTORY does not exits." 
fi
