#!/bin/bash

# Script Name: set-proxy.sh
# Description: Enable proxy.
# Usage: source ~/scripts/set-proxy.sh <address>:<port>
# Author: Chestnut

function proxy() {
  if [ "$1" = "on" ] && [ -n "$2" ]; then
    export http_proxy="http://$2"
    export https_proxy="http://$2"
    export all_proxy="socks5://$2"
    echo "Proxy enabled: http://$2, socks5://$2"
  elif [ "$1" = "off" ]; then
    unset http_proxy
    unset https_proxy
    unset all_proxy
    echo "Proxy disabled."
  else
    echo "Usage: proxy on <address>:<port> | off"
  fi
}

# Enable proxy
proxy on $1 2>&1 >/dev/null
