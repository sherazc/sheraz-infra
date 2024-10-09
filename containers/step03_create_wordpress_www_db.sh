#!/usr/bin/env bash

# Variables for MySQL credentials, container name, and database/user details
MYSQL_ROOT_PASSWORD="password"
CONTAINER_NAME="sheraz-infra-db"
NEW_DATABASE="wordpresswwwdb"
NEW_USER="wordpresswwwuser"
NEW_PASSWORD="password"

# Execute SQL commands inside the container
docker exec -i $CONTAINER_NAME mysql -u root -p$MYSQL_ROOT_PASSWORD <<EOF
CREATE DATABASE $NEW_DATABASE;
CREATE USER '$NEW_USER'@'%' IDENTIFIED BY '$NEW_PASSWORD';
GRANT ALL PRIVILEGES ON $NEW_DATABASE.* TO '$NEW_USER'@'%';
FLUSH PRIVILEGES;
EOF