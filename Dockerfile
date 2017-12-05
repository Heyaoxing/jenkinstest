FROM microsoft/dotnet:latest
ARG source
WORKDIR /app
EXPOSE 80
COPY ${source:-obj/Docker/publish} .
ENTRYPOINT ["dotnet", "jenkinstest.dll"]
