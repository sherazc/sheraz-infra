sudo apt install curl
sudo apt update
sudo apt upgrade
sudo apt install brave-browser
# To disable keyring popup
cd .local/share/keyrings/
mv login.keyring login.keyring.bak
# Next time it pops up give blank password

# This is for Bros Trend USB WIFI
# sh -c 'wget linux.brostrend.com/install -O /tmp/install && sh /tmp/install'

sudo swapon --show
sudo sysctl vm.swappiness=60

free -h

# Rename 1tb drive from device ID /mnt/<random UUID characters> to /mnt/sdb1
# Make sure you can cd into /mnt/sdb1/
cd /mnt/sdb1/

apt install net-tools
apt install docker.io
sudo apt-get update
sudo apt-get install docker-compose-plugin
docker --version
docker compose version
systemctl status docker
systemctl enable docker
# Create container, reboot system, and test if http://localhost:8080 is working
docker run -it -d -p 8080:80 --restart=always nginx

sudo apt install openssh-server
sudo systemctl status ssh
sudo systemctl enable ssh
sudo ufw enable
sudo ufw status
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow OpenSSH
sudo ufw allow 22
sudo ufw status
sudo ufw app list
sudo ufw show added
sudo ufw status

# Copy id_rsa and id_rsa.pub in ~/.ssh/
chmod 600 ~/.ssh/id_rsa

# add public key in id_rsa.pub in a new line of  ~/authorized_keys
# Find ubuntu IP and try to login from Mac
ssh -i /Users/sheraz/.ssh/id_rsa sheraz@10.0.0.10

############
# Install Java
cd /home/sheraz/dev
wget https://download.java.net/java/GA/jdk23/3c5b90190c68498b986a97f276efd28a/37/GPL/openjdk-23_linux-x64_bin.tar.gz
tar -xvzf openjdk-23_linux-x64_bin.tar.gz
sudo mv /home/sheraz/dev/jdk-23 /opt/sheraz-infra/

sudo update-alternatives --install /usr/bin/java java /opt/sheraz-infra/jdk-23/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/sheraz-infra/jdk-23/bin/javac 100
update-alternatives --display java
update-alternatives --display javac
