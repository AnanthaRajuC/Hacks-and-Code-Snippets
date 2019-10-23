# Docker

|  Command |  Description |
|----------|--------------|
|`docker run hello-world`       |run a hello world container.                                             |
|`docker images`                |take a look at the container images.                                     |
|`docker image ls`              |take a look at the container images.                                     |
|`docker ps`                    |list all the running containers.                                         |
|`docker ps -a`                 |list all the containers, including the ones that have finished executing.|
|`docker logs -f [container_id]`|look at the logs of a container                                          |
|`docker inspect [container_id]`|examine a container's metadata in Docker                                 |
|`docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' [container_id]`|Use --format to inspect specific fields from the returned container's metadata JSON|         |
|`docker stop $(docker ps -q) [container_id]`|stop a container                                            |
|`docker rm $(docker ps -aq)`   |Stop and remove all containers                                           |
