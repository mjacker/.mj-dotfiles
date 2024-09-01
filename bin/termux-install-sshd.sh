#!/bin/bash
pkg upgrade
pkg install busybox termux-services openssh
sshd
