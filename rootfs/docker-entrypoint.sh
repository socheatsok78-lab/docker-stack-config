#!/bin/sh
set -e

# Generate the docker stack file
docker stack config "$@" > /tmp/docker-stack.yml.tmp

# Remove the version key from the file
yq 'del(.version)' /tmp/docker-stack.yml.tmp > /tmp/docker-stack.yml

# Print the file
cat /tmp/docker-stack.yml
