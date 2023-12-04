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

1. Build: docker build -f node.dockerfile -t nodeapp .

2. Option 1: Create a custom bridge network and add containers into it

3. docker network create --driver bridge isolated_network
4. docker run -d --net=isolated_network --name mongodb mongo

> NOTE: $(pwd) in the following line is for Mac and Linux. Use ${PWD} for Powershell. 
> See https://blog.codewithdan.com/docker-volumes-and-print-working-directory-pwd/ syntax examples.

5. docker run -d --net=isolated_network --name nodeapp -p 3000:3000 -v $(pwd)/logs:/var/www/logs nodeapp

6. Seed the database with sample database
7. Run: docker exec nodeapp node dbSeeder.js

### Option 2 (Legacy Linking - this is the OLD way)


```
> Start MongoDB and Node (link Node to MongoDB container with legacy linking)

> docker run -d --name my-mongodb mongo

> docker run -d -p 3000:3000 --link my-mongodb:mongodb --name nodeapp danwahlin/nodeapp
```

---

After these steps:

Check if the containers are running:

```bash
docker ps
```

Check the logs of the nodeapp container:

```bash
docker logs nodeapp
```

Check the logs of the mongodb container:

```bash
docker logs mongodb
```
