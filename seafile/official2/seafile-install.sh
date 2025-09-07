#!/bin/bash

docker-compose -p seafile \
  -f seafile-server.yml \
  up -d

docker-compose -p seafile-doc \
  -f seadoc.yml \
  up -d
