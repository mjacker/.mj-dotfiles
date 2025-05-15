#!/usr/bin/bash
watch 'docker ps --format "table {{.Image}}\t{{.Command}}\t{{.Status}}\t{{.Ports}}"'
