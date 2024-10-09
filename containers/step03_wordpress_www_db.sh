#!/usr/bin/env bash

# Variables for MySQL credentials, container name, and database/user details
MYSQL_ROOT_PASSWORD="root_password"
CONTAINER_NAME="mysql_container_name"
NEW_DATABASE="your_database_name"
NEW_USER="new_user"
NEW_PASSWORD="user_password"

# Execute SQL commands inside the container
docker exec -i $CONTAINER_NAME mysql -u root -p$MYSQL_ROOT_PASSWORD <<EOF
CREATE DATABASE $NEW_DATABASE;
CREATE USER '$NEW_USER'@'%' IDENTIFIED BY '$NEW_PASSWORD';
GRANT ALL PRIVILEGES ON $NEW_DATABASE.* TO '$NEW_USER'@'%';
FLUSH PRIVILEGES;
EOF