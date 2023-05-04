#!/bin/bash
# https://computingforgeeks.com/how-to-install-grafana-on-ubuntu-linux-2/
#as sudo

#add Grafana apt repository
apt install -y gnupg2 curl software-properties-common
curl -fsSL https://packages.grafana.com/gpg.key|gpg --dearmor -o /etc/apt/trusted.gpg.d/grafana.gpg
add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"

#Install Grafana
apt update
apt -y install grafana
systemctl enable --now grafana-server
