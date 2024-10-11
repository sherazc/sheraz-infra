#!/usr/bin/env bash

source environment_variables.sh

mkdir -p $container_data_directory/wordpress_www

docker run -d \
--name wordpress_www \
--network sheraz-infra-network \
-e WORDPRESS_DB_HOST=sheraz-infra-db:3306 \
-e WORDPRESS_DB_NAME=$WORDPRESS_WWW_DB_NAME \
-e WORDPRESS_DB_USER=$WORDPRESS_WWW_DB_USER \
-e WORDPRESS_DB_PASSWORD=$WORDPRESS_WWW_DB_USER_PASSWORD \
--mount type=bind,source=$container_data_directory/wordpress_www,target=/var/www/html \
-p 8000:80 \
wordpress:6.6.2-php8.1-apache

