#!/bin/bash
# Builds the kernel and modules
# Assumes that the .config file is available in /proc/config.gz
# Added check to see if make builds correctly; retry once if not

cd /usr/src/kernel/kernel-4.9
make prepare
make modules_prepare
# Make alone will build the dts files too
time make -j6 Image
time make -j6 modules
make modules_install
