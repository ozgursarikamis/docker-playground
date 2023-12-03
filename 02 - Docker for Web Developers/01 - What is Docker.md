# What is Docker?

Docker is a tool that allows you to package your application and all of its dependencies into a standardized unit for software development.

- Lightweight, open, secure platform
- Simplify building, shipping, running applications
- Docker containers run on any machine
- Docker containers run the same in development, staging, production, etc.
- Runs natively on Linux or Windows Server
- Runs on Windows, Mac, Linux development machines
- Relies on images and containers

## Docker Images

Images are read-only templates composed of layered file systems used to share common files and create Docker container instances.

- Images are built from a Dockerfile
- Images are composed of layers

## Docker Containers

Containers are runnable instances of Docker images.

- Containers are isolated from each other and their host
- Containers have their own private set of resources
- Containers can be connected to networks
- Containers can be attached and detached from devices
- Containers can be stopped, started, moved, and deleted

## Where Can Docker Run?

Docker can run on any of the following platforms:

## Differences between VMs and Containers

| Virtual Machines | Containers |
| --- | --- |
| **hardware-level** abstractions | **operating-system-level** abstractions |
| isolated from each other and from the host system. | isolated from each other but share the host system. |
| have their own private hardware resources. | share the host system's resources. |
| have their own operating system. | share the host system's operating system. |
| slow to start. | are fast to start. |
| large in size. | are small in size. |
| heavy on system resources. | are light on system resources. |
| more secure. | are less secure. |

## Docker Benefits

- Accelerate Developer Onboarding
    - Eliminate App Conflicts
- Eliminate Environment Inconsistencies
- Eliminate "Works on My Machine" Bugs
- Shipping Software Faster

## Docker Use Cases

- Continuous Integration and Continuous Delivery (CI/CD)
- Isolated Development Environments
- Microservices
- Cloud Migration
- Hybrid Cloud
- Multi-Cloud
- Server Consolidation
- Serverless Computing
- Machine Learning

# Some commands

```bash
docker pull nginx:alpine
```

```bash
docker run -d -p 8080:80 nginx:alpine
```

> -d: detached mode

> -p: port

> nginx:alpine: image name

> 8080:80: port mapping (host:container) 8080 is the host port and 80 is the container port
