# Volumes

Volumes are special types of directory in a container typically referred to as a "data volume".

Volumes are a way to persist data between containers. 

They are also a way to share data between containers.

Volumes can be shared and reused among containers.

Updates to an image won't affect a data volume.

Data volumes are persisted even after the container is deleted.

## Creating a volume

```bash
docker volume create my-vol
```

## Customizing a volume

```bash
docker run -p 8080:3000
	-v $(pwd):/var/www node  
```

> **-v**: create a volume
 
> **$(pwd)**: current directory

> **/var/www**: path inside the container

<hr />

## Using a Container Volume for Logging

1. Run the container with a named volume:
   
`docker run -d -p 3000:3000 -v /var/www/logs/ logging-to-a-volume`

2. See if it's running:
`docker ps`

3. at this point, access.log has nothing, because the container is writing to the volume, not the local file system.

4. inspect the created volume:
   
`docker volume inspect f2a6527a3f2094a094c4d6af25788440f1e7d222458ae258cfdb9bbed463408f`

5. see the volume on the host:

`docker volume ls`

6. Remove the container and volume:
   
```docker stop ae9b6eb107036b8385c9994a9c8d7cd66fa4404911f190e7fc5762ec326184da```

```docker rm -v ae9b6eb107036b8385c9994a9c8d7cd66fa4404911f190e7fc5762ec326184da```

7. Write the logs by setting the volume to a local directory:
```
docker run -d -p 3000:3000 -v "$(pwd)/logs":/var/www/logs logging-to-a-volume
```