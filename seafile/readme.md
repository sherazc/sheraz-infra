# Seafile version 13 Installation Guide
https://manual.seafile.com/13.0/setup/setup_ce_by_docker


Download Seafile server and environment file

- https://manual.seafile.com/13.0/repo/docker/ce/seafile-server.yml
- https://manual.seafile.com/13.0/repo/docker/ce/env

Rename `env` file to `.env`

In .env file:
- Change variable value `BASIC_STORAGE_PATH=/Volumes/Seagate5TB/seafile-server`
- Change variable value `SEAFILE_MYSQL_VOLUME=/Users/sheraz/dev/seafile-server-mysql-db`


Run `seafile-install.sh`


Note: these commands prevent .DS_Store files from getting created.
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
