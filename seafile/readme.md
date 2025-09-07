# Seafile version 13 Installation Guide
https://manual.seafile.com/13.0/setup/setup_ce_by_docker


Download Seafile server and environment file

- https://manual.seafile.com/13.0/repo/docker/ce/seafile-server.yml
- https://manual.seafile.com/13.0/repo/docker/ce/env

Rename `env` file to `.env`

Change the variable value of `BASIC_STORAGE_PATH=/Volumes/Seagate5TB/seafile`

Run `seafile-install.sh`
