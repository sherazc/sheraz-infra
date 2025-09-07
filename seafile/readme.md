# Seafile version 13 Installation Guide
https://manual.seafile.com/13.0/setup/setup_ce_by_docker


Download Seafile server and environment file

- https://manual.seafile.com/13.0/repo/docker/ce/seafile-server.yml
- https://manual.seafile.com/13.0/repo/docker/ce/env


In `seafile-server.yml` file uncomment and change ports to

```
  ports:
      - "6060:80"
```

NOTE: external drive needs to be mac native disk format. 
In exFAT it mac create .DS_Store and ._* files. Because of the seafile will not work.


Rename `env` file to `.env`

In .env file, change variable values:
```
BASIC_STORAGE_PATH=/Volumes/Seagate5TB/seafile-server
SEAFILE_MYSQL_VOLUME=$BASIC_STORAGE_PATH/seafile-mysql
SEAFILE_SERVER_HOSTNAME=10.0.0.30:6060
JWT_PRIVATE_KEY=abc
```


Run `seafile-install.sh`


Note: these commands prevent .DS_Store files from getting created.
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE


Note: These commands sets and gets
sudo scutil --set ComputerName "scmac15"
sudo scutil --set HostName "scmac15"
sudo scutil --set LocalHostName "scmac15"

sudo scutil --set ComputerName "scmac15"
sudo scutil --set HostName "scmac15"
sudo scutil --set LocalHostName "scmac15"