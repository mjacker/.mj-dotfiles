#!/bin/bash
# This changes the separator from " " (spaces) to ":" colons.
awk -F ":" '{print$1}' /etc/passwd
