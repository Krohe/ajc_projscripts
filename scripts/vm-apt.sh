#!/bin/bash
#https://gist.github.com/vncsna/64825d5609c146e80de8b1fd623011ca
set -e
set -u
set -o pipefail
set -x

apt install curl, sudo, dkms linux-headers-$(uname -r) build-essential libxt6 libxmu6 vim ca-certificates openssh-server apt-transport-https gnupg lsb-release gcc make perl sudo apt-get install -y
usermod -aG sudo $1

# https://www.makeuseof.com/install-virtualbox-guest-additions-on-linux/
mkdir -p /media/cdrom  
mount /dev/cdrom /media/cdrom  
/media/cdrom/VBoxLinuxAdditions.run  
reboot
