#!/bin/bash
apt-add-repository universe
apt-get update
apt-get install pkg-config -y
cd /usr/src
wget -N https://developer.nvidia.com/embedded/dlc/l4t-sources-32-1-jetson-nano
sudo tar -xvf public_sources.tbz2 public_release/kernel_src.tbz2
tar -xvf public_sources/kernel_src.tbz2
rm -r public_release
cd kernel/kernel-4.9
#get the new system configuration
zcat /proc/config.gz > .config
