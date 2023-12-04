# Using Volumes with Node.js

This demonstrates how a volume can be used to mount a local directory into a Node.js container.

```
docker run -d -p 8080:3000 -v "$(pwd):/var/www" -w "/var/www" node:alpine sh -c "npm install && npm start"
```

> `-v $(pwd):/var/www` : mounts the current directory into the container at `/var/www`

> `-w` : sets the working directory to `/var/www`

> `sh -c "npm install && npm start"` : runs the shell command `npm install && npm start`

> `c`: tells the shell to run the command

<hr />
NOTE:
`docker ps` shows only running containers. 
To see all containers, including stopped containers, use `docker ps -a`.
<hr />

See if the container is running:

```
docker ps
```

Visit http://localhost:8080 and you should see the Express site.

