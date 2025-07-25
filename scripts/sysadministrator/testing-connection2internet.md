# Testing conenction

Bash:
```
timeout 3 bash -c "</dev/tcp/google.com/80"
if [ $? -eq 0 ]; then
  echo "Internet is available"
else
  echo "No internet"
fi
```

Python
```py
python3 -c "import socket; socket.create_connection(('google.com', 80), timeout=3)"
if [ $? -eq 0 ]; then
  echo "Internet is available"
else
  echo "No internet"
fi
```

systemd-resolve
```
systemd-resolve google.com
```
