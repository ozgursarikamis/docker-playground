# Docker Compose

## Features

- Manages the whole application lifecycle
- Start, stop, and rebuild services
- View the status of running services
- Stream the log output of running services
- Run a one-off command on a service

## Docker Compose Workflow

1. Build services
2. Start up services
3. Tear-down services

## Docker Compose Commands

- `docker compose up` - Builds, (re)creates, starts, and attaches to containers for a service.
- `docker compose down` - Stops containers and removes containers, networks, volumes, and images created by `up`.
- `docker compose start` - Starts existing containers for a service.
- `docker compose stop` - Stops running containers without removing them.
- `docker compose restart` - Stops and starts existing containers for a service.
- `docker compose pause` - Pauses running containers of a service.
- `docker compose unpause` - Unpauses paused containers of a service.
- `docker compose ps` - Lists containers.
- `docker compose pull` - Pulls service images.
- `docker compose build` - Builds or rebuilds services.
- `docker compose config` - Validates and view the Compose file.

## Key Service Configuration Options

- `build` - Specifies the path to the build context.
- `environment` - Sets environment variables.
- `image` - Specifies the image to use.
- `ports` - Exposes ports.
- `volumes` - Mounts volumes.
- `networks` - Attaches networks.

### Sample docker-compose.override.yml file

```yml
version: "3.7"
services:
  web:
    build:
      context: .
      dockerfile: Dockerfile
      network: netcoreapp-network
    ports:
      - "5000:80"
    volumes:
      - .:/app
    environment:
      - ASPNETCORE_ENVIRONMENT=Development
    networks:
      - netcoreapp-network
```
