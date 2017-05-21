#!/bin/bash
#Alumna: Rodríguez Pérez Blanca Esthela
#script que me muestra el proceso que tiene más hilos y cuántos son

echo "------------------------------------------"
echo "***** Proceso que tiene más hilos ******"
echo "------------------------------------------"
echo
echo "|----MAYOR NUM DE HILOS----| |----PID----|"
     #ps -efL | grep "$pid" | awk '{print $1, $2}' 
    
#echo "Proceso pid: $2 tiene el mayor numero de hilos: $1 "

 ps -efL | awk '{print $3}' | sort -n | uniq -c | sort -nrk 1 | head -n 1 
