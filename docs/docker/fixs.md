Remove the TCP binding override
> tailscale overrides the TCP connection on docker so it fails to start as a service, but works on commands


```
$ cat /etc/systemd/system/docker.service.d/override.conf

[Service]
    ExecStart=
    ExecStart=/usr/bin/dockerd -H fd:// -H tcp://100.77.167.11:2375

```

Remove the TCP binding override
```
sudo rm /etc/systemd/system/docker.service.d/override.conf
sudo systemctl daemon-reload
sudo systemctl restart docker
```

