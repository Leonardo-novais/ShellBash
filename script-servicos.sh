#!/bin/bash
echo "Digite o servico a ser iniciado"
read var1
service $var1 restart
echo "Servicos ativos"
ps aux | grep $var1
echo "Portas Abertas"
netstat -nlpt
