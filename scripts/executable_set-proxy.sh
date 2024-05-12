#!/bin/bash

# Script Name: set-proxy.sh
# Description: Enable proxy in virtual machine or locally.
# Usage: source ~/scripts/set-proxy.sh <port> [virtual] # .profile files
# Author: Chestnut

port=$1
if [ ! -z "$2" ] && [ "$2" = "virtual" ]; then
  nameserver=$(grep '^nameserver' /etc/resolv.conf | awk '{print $2}' | head -n 1)
else
  nameserver=127.0.0.1
fi
export http_proxy=http://${nameserver}:${port}
export https_proxy=http://${nameserver}:${port}
export all_proxy=socks5://${nameserver}:${port}

unset port nameserver
