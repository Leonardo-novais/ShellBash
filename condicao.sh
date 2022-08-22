#!/bin/bash
#EXEMPLO DE CONDICAO
# {SE} 
# {ENTAO}
# {SENAO}
echo "exemplos de condicao"
echo "Se"
echo "Entao"
echo "Senao" 

echo "Qual a cor do semaforo?"
read cor
if [ "$cor" == "verde" ]
then 
      echo "Siga em frente =)"

elif [ "$cor" == "amarelo" ]
then
     echo "AGUARDE!"

else
      echo "PARE!"

fi

