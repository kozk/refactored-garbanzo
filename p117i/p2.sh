#!/bin/bash

if [ "$1" = "" ]
then
  echo "Debe indicar el nombre de un usuario"
  exit
fi
USUARIO = $1
echo "PROCESO CON MAYOR USO DE CPU" 
echo "NOMBRE: `ps -e -o user,pcpu,comm --sort -pcpu | grep $1 | awk '{print $3}' | head -1`"
echo "%CPU: `ps -e -o user,pcpu,comm --sort -pcpu | grep $1 | awk '{print $2}' | head -1`"
echo "PROCESO CON MAYOR USO DE MEMORIA" 
echo "NOMBRE: `ps -e -o user,pmem,comm --sort -pmem | grep $1 | awk '{print $3}' | head -1`"
echo "%MEMORIA: `ps -e -o user,pmem,comm --sort -pmem | grep $1 | awk '{print $2}' | head -1`"
