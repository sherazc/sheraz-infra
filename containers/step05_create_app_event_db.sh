#!/usr/bin/env bash

source environment_variables.sh

docker exec -e MYSQL_PWD=$SHERAZ_INFRA_DB_ROOT_PASSWORD -i $SHERAZ_INFRA_DB_CONTAINER_NAME mysql -u root <<EOF
CREATE DATABASE $APP_EVENT_DB_NAME;
CREATE USER '$APP_EVENT_DB_USER_PASSWORD'@'%' IDENTIFIED BY '$APP_EVENT_DB_USER_PASSWORD';
GRANT ALL PRIVILEGES ON $APP_EVENT_DB_NAME.* TO '$APP_EVENT_DB_USER_PASSWORD'@'%';
FLUSH PRIVILEGES;
EOF
