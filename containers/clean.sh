#!/usr/bin/env bash

source ./configurations/environment_variables.sh

echo "DANGER!!!"
echo "All database and container data in $container_data_directory will be deleted."
echo "Are you sure you want to proceed? (y/n)"
read -r confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
  echo "Continuing..."
  # Place your command or script logic here
else
  echo "Aborting."
  exit 1
fi

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

###########
# Cloudflare
###########
docker stop cloudflared
docker rm -f cloudflared

docker network rm sheraz-infra-network

# TODO: DO NOT INCLUDE THIS LINE
# docker rm -f $(docker ps -a -q)



