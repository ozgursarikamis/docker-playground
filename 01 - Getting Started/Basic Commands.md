List all containers

```bash
docker container ls
```

List all containers (including stopped ones)

```bash
docker container ls -a
```

Stop a container

```bash
docker container stop <container_id> # or <container_name>
```

Remove a container

```bash
docker container rm <container_id> # or <container_name>
```

Remove all stopped containers

```bash
docker container prune
```

Create an image

```bash
docker image build -t <image_name> .
docker image build -t image_webapp:tag_ctr2023 . # tag is optional
```

List all images

```bash
docker image ls
```

Remove an image

```bash
docker image rm <image_id> # or <image_name>
```

Remove all images

```bash
docker image prune
```

Run a container

```bash
docker container run -d --name container_name -p 8000:8080 3beec6814e24 # <image_name> or <image_id>
docker container run -p 8000:8080 image_webapp:tag_ctr2023 # tag is optional
```

# Images

An image is a read-only template with instructions for creating a Docker container.
Often, an image is based on another image, with some additional customization.

> Image is, in shipping terminology, a template for a container, like a blueprint for a house.

# Containers

A container is a runnable instance of an image.
You can create, start, stop, move, or delete a container using the Docker API or CLI.

You can connect a container to one or more networks, attach storage to it, or even create a new image based on its current state.

> In terms of shipping containers, a container is the actual, physical thing that can be shipped around,
> whereas an image is the information on how to build a container.

