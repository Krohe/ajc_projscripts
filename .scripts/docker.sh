#!/bin/bash
#https://gist.github.com/vncsna/64825d5609c146e80de8b1fd623011ca
set -e
set -u
set -o pipefail
set -x

# https://docs.docker.com/engine/install/debian/
apt remove docker docker-engine docker.io containerd runc
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# https://docs.docker.com/engine/install/linux-postinstall/
groupadd docker
usermod -aG docker $USER

systemctl enable docker.service
systemctl enable containerd.service
