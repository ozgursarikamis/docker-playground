# Dockerfile

* Docker file is like a recipe for creating a Docker image.

* Contains build instructions.

* Instructions create immediate image that can be cached to speed up future builds.

* Used with `docker build` command.

## Key Dockerfile Instructions

* `FROM` - Base image to use in build.
* `LABEL` - Metadata about image.
* `COPY` - Copy files from host to image.
* `WORKDIR` - Set working directory for instructions.
* `RUN` - Run command(s) <u>inside</u> container. `npm install`, `apt-get install`, `dotnet run watch` etc.
* `ENTRYPOINT` - Set default command to run **when container starts**.
* `EXPOSE` - Expose port(s) to **outside** world.
* `ENV` - Set **environment** variable(s).
* `VOLUME` - Create mount point(s) for **external** volumes.

## Sample Dockerfile

```dockerfile
FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base # base image, as means alias
LABEL maintainer="Ozgur <ozgur@example.com>" # metadata
WORKDIR /app # set working directory to /app
EXPOSE 8080 # expose port 8080 to outside world

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src # set working directory to /src
COPY ["MyWebApp/MyWebApp.csproj", "MyWebApp/"]
RUN dotnet restore "MyWebApp/MyWebApp.csproj"
COPY . . # the current (local) directory | the working directory in the container
WORKDIR "/src/MyWebApp" # set working directory to /src/MyWebApp
RUN dotnet build "MyWebApp.csproj" -c Release -o /app # build the project

FROM build AS publish
RUN dotnet publish "MyWebApp.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "MyWebApp.dll"] # set default command to run when container starts
```

* each instruction builds a new image layer

----------

# Building a Custom Image

```bash
docker build -t mywebapp . # build image from Dockerfile in current directory, tag it as mywebapp
```

* -t : tag is used to give a name to the image
* . at the end: build context, <u>the directory where the Dockerfile is located</u>