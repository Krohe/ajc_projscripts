#!/bin/bash
#https://gist.github.com/vncsna/64825d5609c146e80de8b1fd623011ca
set -e
set -u
set -o pipefail
set -x

export Path=$PATH:/sbin
echo "export Path=$PATH:/sbin">>.bashrc
# https://askubuntu.com/questions/792832/how-to-install-virtualbox-guest-additions-for-ubuntu-16-04
sudo usermod --append --groups vboxsf $USERNAME
