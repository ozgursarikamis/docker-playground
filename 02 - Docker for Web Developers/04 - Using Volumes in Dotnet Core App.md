# Using Volumes with ASP.NET Core

This demonstrates how a volume can be used to mount a local directory into an ASP.NET Core container.

**Linux, Mac, and WSL on Windows - $(pwd)**

`docker run -d -p 8080:5063 -v $(pwd):/var/www -w "/var/www" mcr.microsoft.com/dotnet/sdk bash -c "dotnet watch run"`

* 5063 is the default port for ASP.NET Core, that is configured in `launchSettings.json`
* mcr.microsoft.com/dotnet/sdk is the official **.NET Core SDK image**
* bash is supported in this SDK image
* `dotnet watch run` is the command to run the app and should pick up changes to the code to recompile and restart the app