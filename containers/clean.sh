#!/usr/bin/env bash

source environment_variables.sh

###########
# sheraz-infra-db
###########
docker stop sheraz-infra-db
docker rm -f sheraz-infra-db
rm -rf $container_data_directory/sheraz-infra-db


docker network rm sheraz-infra-network

# TODO: DO NOT INCLUDE THIS LINE
# docker rm -f $(docker ps -a -q)



