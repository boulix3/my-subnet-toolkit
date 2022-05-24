# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
#download binaries from github releases to /output/binaries folder
COPY scripts/ /scripts
RUN chmod +x /scripts/*.sh
RUN /scripts/downloader.sh

#copy source and build it to /output/build folder
WORKDIR /source
COPY src/myapp/. ./
RUN dotnet publish -c release -o /output/build

# # final stage/image
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /build
#we should have the /binaries and /build folder from the previous image
COPY --from=build /output /
#ENTRYPOINT ["dotnet", "myapp.Server.dll"]
