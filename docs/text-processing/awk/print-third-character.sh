#!/bin/bash
# Print the third character of a strings using awk.
`echo "abcde" | akw '{print substr($0, 3, 1)}'`
