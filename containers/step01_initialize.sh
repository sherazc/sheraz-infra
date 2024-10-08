#!/usr/bin/env bash
export data_directory=/opt/sheraz-infra/containers-data
mkdir -p $data_directory
docker network create --driver=bridge sheraz-infra-network
