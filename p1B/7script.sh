#!/bin/bash
#Alumna:Rodríguez Pérez Blanca Esthela
#Valida que la contraseña tenga un buen formato mínimo 8 caracteres, un simbolo numerico
#y uno de los siguientes simbolos @, #, $, %, &, ∗, +, −, =--->

echo " TAMAÑO MINIMO 8 CARACTERES "
#echo -n "Introduzca su password: "
read -s SECRET_PASSWD
echo "$SECRET_PASSWD" | egrep "[0-9]+" | egrep "[@#$%&∗+−=]+" | egrep  "^[0-9A-Za-z@#$%&∗+−=]{8,}$" 
 
if [ $? -ne 0 ]
  then
   echo
   echo "El password es incorrecto $SECRET_PASSWD debe "
   echo " de contener algún simbolo especial o número "
  
else
  echo " El password es correcto"
fi
 








