#!/bin/bash
while true; do
  { echo -ne "HTTP/1.1 200 OK\r\nContent-Length: 13\r\n\r\nHello, world!"; } | nc -l -p 8080
done

