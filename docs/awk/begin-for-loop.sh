#!/bin/bash
awk 'BEGIN { for(i=1; i<=10; i++) print "The square root of ", i, "is", i*i;}'
