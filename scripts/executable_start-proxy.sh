#!/bin/bash

# Script Name: start-clash.sh
# Description: Enable proxy with wsl in .profile files.
# Author: Chestnut

nameserver=`grep '^nameserver' /etc/resolv.conf | awk '{print $2}' | head -n 1`
port=7890
export http_proxy=http://${nameserver}:${port}
export https_proxy=http://${nameserver}:${port}
export all_proxy=socks5://${nameserver}:${port}

