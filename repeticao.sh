#!/bin/bash
#echo {1..3}
#for ip in {1..10};do echo 192.168.0.$ip;done
#for ip in $(seq 100 120);
#do
#echo 172.16.1.$ip;
#done
#while true;do echo "Hacked"; done 

for ip in $(cat ./teste-for.txt);
do
echo 172.16.1.$ip;
done

