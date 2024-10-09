#!/usr/bin/env bash

export data_directory=/opt/sheraz-infra/containers-data

docker network rm sheraz-infra-network

# TODO: DO NOT INCLUDE THIS LINE
# docker rm -f $(docker ps -a -q)

###########
# sheraz-infra-db
###########
docker stop sheraz-infra-db
docker rm -f sheraz-infra-db
rm -rf $data_directory/sheraz-infra-db


