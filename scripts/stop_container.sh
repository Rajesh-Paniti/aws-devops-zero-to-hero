#!/bin/bash
set -e

# Get running container IDs (skip header)
container_id=$(docker ps -q)

# Stop & remove containers only if they exist
if [ -n "$container_id" ]; then
  docker rm -f $container_id
fi
