@echo off

echo Pulling oracle Image ...
docker pull container-registry.oracle.com/database/free:latest
echo Runing Docker Container
docker run --name oracle -d -p 1521:1521 container-registry.oracle.com/database/free:latest
echo Container started Succesfully