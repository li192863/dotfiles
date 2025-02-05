#!/bin/bash

# Script Name: proxy.sh
# Description: Enable proxy.
# Author: Chestnut

function proxy() {
  # Parse args
  # set defaults
  local server="127.0.0.1:7890"
  # positional args
  local args=()
  # named args
  while [ "$1" != "" ]; do
    case "$1" in
    -h | --help)
      echo "usage: proxy on [<address>:<port>] | off"
      return 0
      ;;
    *)
      args+=("$1") # if no match, add it to the positional args
      ;;
    esac
    shift # move to next kv pair
  done
  # restore positional args
  set -- "${args[@]}"
  # set positionals to vars
  local action="$1"
  [ -n "$2" ] && server="$2"
  # validate required args
  if [ "${action}" != "on" ] && [ "${action}" != "off" ]; then
    env | grep -i --color=never "proxy"
    return 0
  fi

  #Execute
  if [ "${action}" = "on" ]; then
    export http_proxy="http://${server}"
    export https_proxy="http://${server}"
    export all_proxy="socks5://${server}"
    echo "Proxy enabled: http://${server}, socks5://${server}"
  elif [ "${action}" = "off" ]; then
    unset http_proxy
    unset https_proxy
    unset all_proxy
    echo "Proxy disabled."
  fi
}

# Enable proxy
proxy on $1 2>&1 >/dev/null
