# Communication Between Docker Containers

- Using Legacy Links
- Using User Defined Networks

## Steps to Create a Container Network

1. Create a Custom Network

```bash
docker network create --driver bridge isolated_network
```

`--drive: bridge (default) | overlay | macvlan | none` (Use a bridge network.)

> Bridge networks are usually used when your applications run in standalone containers that need to communicate.

2. Run the Containers in the Network

```bash
docker run -d --network isolated_network --name db mongodb mongo
```