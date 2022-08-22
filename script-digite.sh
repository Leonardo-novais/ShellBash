#!/bin/bash
echo "Digite um IP"
read ip
porta=80
nmap $ip $porta
echo "O Resultado do Scan.."
echo "Varrendo o Host $ip na porta: $porta"

