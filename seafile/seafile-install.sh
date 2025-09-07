#!/bin/bash

docker-compose -p seafile \
  -f seafile-server.yml \
  up -d
