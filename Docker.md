# Docker

# docker run hello-world
## run a hello world container
 
# docker images
## take a look at the container images pulled from Docker Hub

# docker ps
## look at the running containers

# docker ps -a
## In order to see all containers, including ones that have finished executing

# docker logs -f [container_id]
## look at the logs of a container

# docker inspect [container_id]
## examine a container's metadata in Docker

# docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' [container_id]
## Use --format to inspect specific fields from the returned JSON

# docker stop $(docker ps -q)
# docker rm $(docker ps -aq)
## Stop and remove all containers:

