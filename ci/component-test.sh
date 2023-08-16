#! /bin/bash

# Convert docker_username to lowercase
docker_username="${docker_username,,}"

if [[ -z "${docker_username}" ]]; then
    DockerRepo=''
else
    DockerRepo="${docker_username}/"
fi

docker_username=$DockerRepo docker-compose -f component-test/docker-compose.yml --project-directory . -p ci up --build --exit-code-from test

