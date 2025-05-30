Give Different Project Names to different docker compose files

`docker compose -f docker-compose-production.yml -p prod up --build`
`docker compose -f docker-compose-development.yml -p dev up --build`
Clean up old Compose projects
```
docker compose -p dev down
docker compose -p prod down
```

List all running containers with their Compose project name
`docker ps --format "table {{.Names}}\t{{.Label \"com.docker.compose.project\"}}"`

List all containers (including stopped ones)
`docker ps -a --format "table {{.Names}}\t{{.Label \"com.docker.compose.project\"}}"`
