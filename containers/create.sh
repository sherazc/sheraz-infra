#!/usr/bin/env bash

source ../environment.sh

export data_directory=/opt/sheraz-infra/containers-data
mkdir -p $data_directory

docker network create --driver=bridge sheraz-infra-network

mkdir -p $data_directory/sheraz-infra-db
docker run \
  --detach \
  --name=sheraz-infra-db \
  -p 3306:3306 \
  --env="MYSQL_ROOT_PASSWORD=password" \
  --env="MYSQL_DATABASE=sherazinfradb" \
  --env="MYSQL_USER=sherazinfradbuser" \
  --env="MYSQL_PASSWORD=password" \
  --mount type=bind,source=$data_directory/sheraz-infra-db,target=/var/lib/mysql \
  --network=sheraz-infra-network \
  mysql:latest
