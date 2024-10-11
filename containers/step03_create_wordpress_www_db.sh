#!/usr/bin/env bash

source environment_variables.sh

docker exec -e MYSQL_PWD=$SHERAZ_INFRA_DB_ROOT_PASSWORD -i $SHERAZ_INFRA_DB_CONTAINER_NAME mysql -u root <<EOF
CREATE DATABASE $WORDPRESS_WWW_DB_NAME;
CREATE USER '$WORDPRESS_WWW_DB_USER'@'%' IDENTIFIED BY '$WORDPRESS_WWW_DB_USER_PASSWORD';
GRANT ALL PRIVILEGES ON $WORDPRESS_WWW_DB_NAME.* TO '$WORDPRESS_WWW_DB_USER'@'%';
FLUSH PRIVILEGES;
EOF
