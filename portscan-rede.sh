#!/bin/bash
if [ "$1" == "" ]
then
   echo "DESEC SECURITY - PORTSCAN NETWORK"
   echo "Mode de uso: $0 REDE"
   echo "Exemplo: $0 192.168.0"
else
for ip in {1..254};
do
hping3  -S -p 21 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f 2;
done
fi
