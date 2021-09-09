FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /source
# COPY ["./App/*.csproj", "./App/*.cs", "./"]
COPY ./App/. ./
RUN dotnet publish -c release -o /app 
WORKDIR /app
ENTRYPOINT ["dotnet", "NetCore.Docker.dll"]