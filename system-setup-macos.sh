######################
# Download and install docker desktop

######################
# Install JDK
brew install openjdk

######################
# Set static IP address
# Open System Settings -> Network -> Choose the adapter
# Select "Unsing DHCP with manual address" and enter these values
# IP Address: 10.0.0.30
# Subnet Mask: 255.255.255.0
# Router: 10.0.0.1

######################
# Setup ssh connection
#
# Step 1
# copy public key in .ssh/authorized_keys in the server mac
#
# Step 2
# Verify getremotelogin is on:
# sudo systemsetup -getremotelogin
#
# If it is not "on" then server mac
#
# Open System Settings -> Privacy & Security -> Full Disk Access
# Add Terminal.app and Turn ON Terminal.app's checkbox
sudo systemsetup -setremotelogin on
#
# Try to connect to server mac from another mac or linux machine
ssh -i /Users/sheraz/.ssh/id_rsa sheraz@10.0.0.30

######################
# Docker file sharing
#
# 1. Open Docker Desktop.
# 2. Go to Settings → Resources → File Sharing.
# 3. Add /opt/sheraz-infra
# 4. Click Apply & Restart.
