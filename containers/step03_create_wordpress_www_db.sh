#!/usr/bin/env bash

export SHERAZ_INFRA_DB_ROOT_PASSWORD="password"
export WORDPRESS_WWW_USER_PASSWORD="password"

# Variables for MySQL credentials, container name, and database/user details
SHERAZ_INFRA_DB_CONTAINER_NAME="sheraz-infra-db"
WORDPRESS_WWW_DB_NAME="wordpresswwwdb"
WORDPRESS_WWW_USER="wordpresswwwuser"

# Execute SQL commands inside the container
docker exec -e MYSQL_PWD=$SHERAZ_INFRA_DB_ROOT_PASSWORD -i $SHERAZ_INFRA_DB_CONTAINER_NAME mysql -u root <<EOF
CREATE DATABASE $WORDPRESS_WWW_DB_NAME;
CREATE USER '$WORDPRESS_WWW_USER'@'%' IDENTIFIED BY '$WORDPRESS_WWW_USER_PASSWORD';
GRANT ALL PRIVILEGES ON $WORDPRESS_WWW_DB_NAME.* TO '$WORDPRESS_WWW_USER'@'%';
FLUSH PRIVILEGES;
EOF
