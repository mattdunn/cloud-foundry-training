### Building (and re-building) the Docker Image

  ```shell
  docker-compose build
  ```

### Creating a Docker Container and running a shell inside the container

  ```shell
  docker-compose run --service-ports web bash
  ```

Note that the current directory is mounted inside the container under /app. 

FYI the --service-ports flag instructs docker-compose to honour the port mappings between the host and container as specified in docker-compose.yml. Haven't specified ports yet, but assume we will need to run a java-based app in the container. 
