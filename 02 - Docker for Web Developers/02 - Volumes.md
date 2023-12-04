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
>
> 