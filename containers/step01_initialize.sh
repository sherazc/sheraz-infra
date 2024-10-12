#!/usr/bin/env bash

source ./configurations/environment_variables.sh

mkdir -p $container_data_directory
docker network create --driver=bridge sheraz-infra-network
