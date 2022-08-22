#!/bin/bash
if [ "$1" == "" ] 
then
    echo "DESEC SECURITY"
    echo "Modo de uso: $0  192.168.0.1 80"
else
    echo "Varrendo host: $1 e porta: $2"
    nmap -sV -A -O  $1 $2

fi

