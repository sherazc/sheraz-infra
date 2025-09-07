#!/bin/bash

source .env

mkdir -p ${SEAFILE_VOLUME}
mkdir -p ${SEAFILE_MYSQL_VOLUME}

docker-compose -p seafile \
  -f seafile-server.yml \
  up -d
