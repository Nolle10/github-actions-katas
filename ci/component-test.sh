#! /bin/bash

# Convert docker_username to lowercase
docker_username="${docker_username,,}"

[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker-compose -f performance-test/docker-compose.yml --project-directory . -p ci up --build --exit-code-from test
