#!/usr/bin/env bash

source ./configurations/environment_variables.sh

echo "DANGER!!!"
echo "This will recreate $APP_EVENT_DB_USER user and $APP_EVENT_DB_NAME database"
echo "Are you sure you want to proceed? (y/n)"
read -r confirm
if [[ "$confirm" =~ ^[Yy]$ ]]; then
  echo "Continuing..."
  # Place your command or script logic here
else
  echo "Aborting."
  exit 1
fi

docker exec -e MYSQL_PWD=$SHERAZ_INFRA_DB_ROOT_PASSWORD -i $SHERAZ_INFRA_DB_CONTAINER_NAME mysql -u root <<EOF
DROP USER '$APP_EVENT_DB_USER'@'%';
drop database $APP_EVENT_DB_NAME;
CREATE DATABASE $APP_EVENT_DB_NAME;
CREATE USER '$APP_EVENT_DB_USER'@'%' IDENTIFIED BY '$APP_EVENT_DB_USER_PASSWORD';
GRANT ALL PRIVILEGES ON $APP_EVENT_DB_NAME.* TO '$APP_EVENT_DB_USER'@'%';
FLUSH PRIVILEGES;
EOF
