#!/usr/bin/env bash

docker network rm sheraz-infra-network

# TODO: DO NOT INCLUDE THIS LINE
docker rm -f $(docker ps -a -q)


