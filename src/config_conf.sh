#!/bin/bash
config_conf(){
  sed -i "s/%PORT%/$RPC_PORT/g" /etc/aria2/aria2.conf
  sed -i "s/%DOWNLOADPATH%/$DOWNLOAD_PATH/g" /etc/aria2/aria2.conf
  sed -i "s/%UUID%/$RPC_SEC/g" /etc/aria2/aria2.conf
  sed -i "s/%ENABLE_RPC%/$ENABLE_RPC/g" /etc/aria2/aria2.conf
  echo "=> Configuration succeeded! (/etc/aria2/aria2.conf)"
  echo "=> RPC Token:"
  echo "=>        $RPC_SEC"
}