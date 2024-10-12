#!/usr/bin/env bash

source ./configurations/environment_variables.sh

###########
# sheraz-infra-db
###########
docker stop sheraz-infra-db
docker rm -f sheraz-infra-db
rm -rf $container_data_directory/sheraz-infra-db

###########
# wordpress_www
###########
docker stop wordpress_www
docker rm -f wordpress_www
rm -rf $container_data_directory/wordpress_www


docker network rm sheraz-infra-network

# TODO: DO NOT INCLUDE THIS LINE
# docker rm -f $(docker ps -a -q)



