# Docker Swarm

## What is Docker Swarm?

Docker Swarm is a clustering and scheduling tool for Docker containers. 

With Swarm, IT administrators and developers can establish and manage a cluster of Docker nodes as a single virtual system.

Swarm mode also provides a fault-tolerant mechanism in which services can continue running uninterrupted if a node fails.

## Swarm Mode

Swarm mode is a Docker feature that allows you to create a cluster of Docker nodes and deploy services to the cluster.

Swarm mode is built into Docker Engine and is not a separate program.

## Multipass Commands

### Find Multipass Instances

```bash
multipass find
```

### List Multipass Instances

```bash
multipass list
```

### Start Multipass Instance

```bash
multipass start <instance-name>
```

### Stop Multipass Instance

```bash
multipass stop <instance-name>
```

### Delete Multipass Instance

```bash
multipass delete <instance-name>
```

## Create a Docker Swarm

### Create a Docker Swarm Manager

```bash
multipass launch --name manager --cpus 2 --mem 2G --disk 10G
```

### Create a Docker Swarm Worker

```bash
multipass launch --name worker --cpus 2 --mem 2G --disk 10G
```

### List Multipass Instances

```bash
multipass list
```

### Get the IP Address of the Docker Swarm Manager

```bash

multipass info manager | grep IPv4
```

### SSH into the Docker Swarm Manager

```bash
multipass shell manager
```

### Initialize the Docker Swarm

```bash

docker swarm init --advertise-addr <manager-ip-address>
```

### Get the Docker Swarm Join Token

```bash
docker swarm join-token worker
```

### SSH into the Docker Swarm Worker

```bash
multipass shell worker
```

### Join the Docker Swarm

```bash
docker swarm join --token <token> <manager-ip-address>:2377
```

### SSH into the Docker Swarm Manager

```bash
multipass shell manager
```

### List the Docker Swarm Nodes

```bash
docker node ls
```

## Deploy a Service to the Docker Swarm

### Deploy a Service to the Docker Swarm

```bash
docker service create --name web --publish 8080:80 nginx
```

### List the Docker Swarm Services

```bash
docker service ls
```

### List the Docker Swarm Tasks

```bash
docker service ps web
```

### List the Docker Swarm Containers

```bash
docker ps
```

### Scale the Docker Swarm Service

```bash
docker service scale web=5
```

### List the Docker Swarm Tasks

```bash
docker service ps web
```

### List the Docker Swarm Containers

```bash
docker ps
```

# Step by Step Creating a Docker Swarm

1. Get node's info:
    
```bash
multipass info node1
```

```bash
multipass shell node1
```

2. Check the docker's version:
    
```bash
docker version
```

3. Initialize the swarm:

```bash
docker swarm init --advertise-addr <node1-ip-address>
```

the result will be like this:

```bash
Swarm initialized: current node (gzfwir1kdqf9s3x125z6kht8s) is now a manager.

To add a worker to this swarm, run the following command:

docker swarm join --token SWMTKN-1-5izh3q8tzim2f3xqusixrmvomvmzx3hpsxn74dyyexmd0jo7kj-al20qqivc071yoccxthusjpxx 172.17.0.1:2377

To add a manager to this swarm, run 'docker swarm join-token manager' and follow the instructions.
```

