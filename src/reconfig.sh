#!/bin/bash
reconfig(){
    if [ ! -f /etc/aria2/aria2.conf ];then echo "/etc/aria2/aria2.conf not found!";exit;fi 
    read_install_param
    config_conf
    if [ $(type -P aria2) ];then
        if [ -f /usr/bin/systemd/system/aria2c.service ];then
            systemctl restart aria2c.service
        else
            echo "aria2c.service not found! Please reinstall Aria2."
        fi
    else
        echo "Aria2 not installed! Please install Aria2."
    fi
}