# docker commands
- Get docker info: `docker info`
- Get docker version: `docker --version`

# images
- pulling image: `docker pull <image>`
- deleting: `docker rmi <name>`

# container
- creating container: 
    `docker container ls -a` 
    `docker create <image>`
    `docker container create <image>`
    `docker container create --name monguito mongo`
    Port mapping
    `docker container create --name monguito -p 27017:27017 mongo`
    `docker container start <id/monguito>` / 
    `docker start <id/monguito>`
    `docker stop <id/name>`
    `docker rm <id/name>`

# Running OSs
- running kali image into to container
`sudo docker run -i -t kalilinux/kali-roling:latest /bin/bash`





