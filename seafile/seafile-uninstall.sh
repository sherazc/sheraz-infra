#!/bin/bash
docker-compose -p seafile -f seafile-server.yml down -v

rm -rf seafile-data
rm -rf seafile-mysql
