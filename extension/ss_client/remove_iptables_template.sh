#!/usr/bin/env bash

#if [[ -z $FW_SS_SERVER || -z $FW_SS_LOCAL_PORT ]]; then
#  exit 1;
#fi
CHAIN_NAME=FW_SHADOWSOCKS${FW_NAME}

sudo iptables -t nat -F $CHAIN_NAME &>/dev/null
sudo iptables -t nat -X $CHAIN_NAME &>/dev/null
