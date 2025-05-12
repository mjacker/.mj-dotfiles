#!/usr/bin/bash

fruits="apple,banana,orange"

IFS="," read -r -a fruits_array <<< "${fruits}"

for fruit in "${fruits_array[@]}"; do 
  echo "Fruit: ${fruit}"
done 
