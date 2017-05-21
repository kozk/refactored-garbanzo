#/bin/bash
#Alumna: Rodríguez Pérez Blanca Esthela
# Programa: script que permita crear contraseñas requiere permisos de administrador

echo " ---- Crea usuarios del sistema ----"
opc=1;
while [  $opc ]; do

echo " CREANDO USUARIO "
echo "Nombre del usuario: "
read usuario
echo "Ingresa la Contraseña: "
read -s pass

#echo "$pass" | egrep "[0-9]+" | egrep "[@#$%&∗+−=]+" | egrep  "^[0-9A-Za-z@#$%&∗+−=]{8,}$" 
if [ $? -ne 0 ]
  then
   echo "Contraseña vulnerable"
else
  echo "Contraseña valida"
  sudo useradd -m -p $pass $usuario
  [ $? -eq 0 ] && echo "Usuario creado correctamente"
fi

echo "Teclee 0 si desea Salir o 1 para continuar"
read opc
if [ $opc -eq 0 ]
 then
  exit
fi

done


echo $usuario
echo $pass
