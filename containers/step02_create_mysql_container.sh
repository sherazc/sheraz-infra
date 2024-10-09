#!/usr/bin/env bash

source environment_variables.sh

mkdir -p $container_data_directory/sheraz-infra-db

docker run \
  --detach \
  --name=sheraz-infra-db \
  -p 3306:3306 \
  --env="MYSQL_ROOT_PASSWORD=$SHERAZ_INFRA_DB_ROOT_PASSWORD" \
  --env="MYSQL_DATABASE=sherazinfradb" \
  --env="MYSQL_USER=sherazinfradbuser" \
  --env="MYSQL_PASSWORD=$SHERAZ_INFRA_DB_USER_PASSWORD" \
  --mount type=bind,source=$container_data_directory/sheraz-infra-db,target=/var/lib/mysql \
  --network=sheraz-infra-network \
  mysql:9.0.1
