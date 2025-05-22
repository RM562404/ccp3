#!/bin/bash

#Verificação argumento
if [ "$1" = "hostname" ]; then 
    hostname
elif [ "$1" = "uptime" ]; then
    uptime -p
elif [ "$1" = "disk" ]; then
    df -h /
elif [ "$1" = "all" ]; then
    hostname && uptime -p && df -h /
else  #Se não tiver nenhum argumento
    echo " Uso: ./minfo.sh {hostname|uptime|disk|all}"
fi