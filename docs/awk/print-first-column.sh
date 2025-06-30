#!/bin/bash
# Simple example how to print the first column of ps
ps
echo "print first column: "
ps | awk '{print$1}'
echo "print fourth column: "
ps | awk '{print$4}'
