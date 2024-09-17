#!/bin/bash
git config --global core.editor vim
git config --global user.email "mjackerjaime@gmail.com"
read -p "Enter name for global user name: " name
git config --global user.name $name
