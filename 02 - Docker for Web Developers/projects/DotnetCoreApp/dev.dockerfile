FROM        mcr.microsoft.com/dotnet/sdk

LABEL       author="Dan Wahlin"

ENV         ASPNETCORE_URLS=http://*:5063
ENV         DOTNET_USE_POLLING_FILE_WATCHER=1
# DOTNET_USE_POLLING_FILE_WATCHER is used to enable file watching inside of a container.
# This is required since containers don't support file watching natively.
# The value of 1 tells .NET Core to use a polling file watcher instead of the default file watcher.

ENV         ASPNETCORE_ENVIRONMENT=development

WORKDIR     /app

ENTRYPOINT ["/bin/bash", "-c","dotnet restore && dotnet watch run"]

# Build the image using:
# docker build -t aspnetcore-sdk .

# Run the image using:
# docker run -d -p 8080:5063 -v $(pwd):/app aspnetcore-sdk