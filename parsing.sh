#!/bin/bash
if [ "$1" == "" ]
then
  echo "DESEC SECURITY"
  echo "Mode de uso: $0 URL"
  echo "Exemplo de uso: $0 exemplo.com"
 
else 
wget $1
cat index.html | grep "href" | cut -d "/"  -f 3 | grep "\." | grep -v "<l" | cut -d '"' -f 1 >  sub-dominios
echo  "=============================================================================================================================================" 
echo  -e "\033[01;36mBuscando SubDominios no $1 \0033[m"
echo "============================================================================================================================================="
sleep 2
  for dominio in $(cat sub-dominios);
do
host $dominio | grep "has address";  
done
echo "#############################################################################################################################################" 
rm -rf index.html

fi




#fazer wget no alvo
#buscar por href  grep href index.html 
# grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v  "<l"
# direcionar a saida depois de limpa para um arquivo Exemplo lista.txt   > linsta.txt
#resolver os nomes usando o host  
# Exemplo:  host exemplo.com
#for  url in $(cat lista.txt);do host $url;done
