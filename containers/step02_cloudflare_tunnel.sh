#!/usr/bin/env bash

source ./configurations/environment_variables.sh

docker run -d \
    --name=cloudflared \
    --network=host \
    --restart unless-stopped \
    cloudflare/cloudflared:latest tunnel \
    --no-autoupdate run \
    --token=$CLOUDFLARE_TUNNEL_TOKEN

# I used to install couldfared service on host system
# # Cloudflared - https://pkg.cloudflare.com/index.html
# # Add cloudflare gpg key
# sudo mkdir -p --mode=0755 /usr/share/keyrings
# curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg | sudo tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null

# # Add this repo to your apt repositories
# echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared focal main' | sudo tee /etc/apt/sources.list.d/cloudflared.list

# # install cloudflared
# sudo apt-get update && sudo apt-get install cloudflared

# # Verify cloudflared installation
# cloudflared --version
# # Goto https://one.dash.cloudflare.com/
# # Network -> Tunnels -> Create a tunnel
# # Get the service command and and the token. It will look something like this
# sudo cloudflared service install <TOKEN>
# # Make sure cloudflared is enabled service and token is added in the logs
# systemctl status cloudflared



