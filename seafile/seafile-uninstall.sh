#!/bin/bash
source .env
docker-compose -p seafile -f seafile-server.yml down -v

rm -rf ${SEAFILE_VOLUME}
rm -rf ${SEAFILE_MYSQL_VOLUME}
