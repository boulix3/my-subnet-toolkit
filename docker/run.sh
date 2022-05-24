#!/bin/bash
podman build . -t boulix
podman run -it --rm -p 8000:80 boulix bash
# docker run -it --rm -p 8000:80 --name aspnetcore_sample mcr.microsoft.com/dotnet/samples:aspnetapp
