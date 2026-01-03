#!/bin/bash
set -e

echo "Stopping running Docker containers..."

container_id=$(docker ps -q)

if [ -n "$container_id" ]; then
  docker rm -f $container_id
  echo "Stopped containers: $container_id"
else
  echo "No running containers found."
fi
