#!/usr/bin/env bash

source environment_variables.sh

export MYSQL_PWD="password"

# Variables for MySQL credentials, container name, and database/user details
SHERAZ_INFRA_DB_CONTAINER_NAME="sheraz-infra-db"
WORDPRESS_WWW_DB_NAME="wordpresswwwdb"
WORDPRESS_WWW_USER="wordpresswwwuser"

# Execute SQL commands inside the container
docker exec -i $SHERAZ_INFRA_DB_CONTAINER_NAME mysql -u root <<EOF
CREATE DATABASE $WORDPRESS_WWW_DB_NAME;
CREATE USER '$WORDPRESS_WWW_USER'@'%' IDENTIFIED BY '$WORDPRESS_WWW_USER_PASSWORD';
GRANT ALL PRIVILEGES ON $WORDPRESS_WWW_DB_NAME.* TO '$WORDPRESS_WWW_USER'@'%';
FLUSH PRIVILEGES;
EOF