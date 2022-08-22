#!/bin/bash
#Meu Primeiro Script
echo "Desec Security" 
echo "Sitema Ligado por:" $(uptime -p)
echo "O diretorio atual" $(pwd)
echo "O usuario atual "$(whoami)
ip=192.168.0.1 #definindo variavel
echo "Varrendo O Host:" $ip

