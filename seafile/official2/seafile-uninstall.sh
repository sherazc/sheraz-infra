#!/bin/bash

docker-compose -f seafile-server.yml down -v

rm -rf seafile-data
rm -rf seafile-mysql

