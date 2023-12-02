# Declarative Deployment Model

***Docker Compose*** is a tool for defining and running multi-container Docker applications.
With Compose, you use a ***YAML*** file to configure your application’s services.
Then, with a single command, you create and start all the services from your configuration.

To run the `compose.yaml` file, use the following command, go the the directory where the file is located and run the following command:

```bash
docker-compose up
```

This command will create the containers and run them in the background. 

To stop the containers, run the following command:
```bash
docker-compose down
```
