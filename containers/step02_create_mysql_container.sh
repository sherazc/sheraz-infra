#!/usr/bin/env bash

source ./configurations/environment_variables.sh

mkdir -p $container_data_directory/sheraz-infra-db

# TODO add PHP ini to
docker run \
  --detach \
  --name=sheraz-infra-db \
  -p 3306:3306 \
  --env="MYSQL_ROOT_PASSWORD=$SHERAZ_INFRA_DB_ROOT_PASSWORD" \
  --env="MYSQL_DATABASE=$SHERAZ_INFRA_DB_NAME" \
  --env="MYSQL_USER=$SHERAZ_INFRA_DB_USER" \
  --env="MYSQL_PASSWORD=$SHERAZ_INFRA_DB_USER_PASSWORD" \
  --mount type=bind,source=$container_data_directory/sheraz-infra-db,target=/var/lib/mysql \
  --network=sheraz-infra-network \
  mysql:9.0.1
