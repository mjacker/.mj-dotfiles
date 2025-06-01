# docker compose
Example how to run inside a docker compose app service

`docker compose --env-file .env -f docker-compose-file.yaml run --entrypoint bash service-name`

`docker compose --env-file .env.development -f docker-compose-stage-one.yaml run --entrypoint bash app`
