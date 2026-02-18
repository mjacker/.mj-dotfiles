# docker commands
- Get docker info: `docker info`
- Get docker version: `docker --version`

# images
- pulling image: `docker pull <image>`
- deleting: `docker rmi <name>`

# Build 
Usually refers from a Dockerfile, it creates and names an image
`docker build .`: Look for Dockerfile in current directory and build it.
`docker build -t my-image-name[:tag] .`
`-t`: tag

# container
Create a container without runing it
- creating container: 
`docker create <image>`
`docker container create <image>`
`docker container create --name container_name mongo`
`docker container ls -a` 
- Port mapping
`docker container start <id/monguito>` / 
`docker container create --name monguito -p 27017:27017 mongo`

- State
`docker start <id/monguito>`
`docker stop <id/name>`
`docker rm <id/name>`

# Ports
`docker port <container-name>`

# Tags
`docker tag abc123def456 my-app:latest`

# Running OSs
- running kali image into to container
`sudo docker run -i -t kalilinux/kali-roling:latest /bin/bash`


# system

Delete all stopped containers, networks, volumes, and build cache
`docker system prune -a --volumes`

# Solving issues
 `sudo usermod -aG docker $USER` Docker running only with sudo
> if cant logout, can star a new shell with updated groups with
> `newgrp docker`
