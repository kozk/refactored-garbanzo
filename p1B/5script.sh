#!/bin/bash
#Alumna: Rodríguez Pérez Blanca ESthela
#primeros 10 procesos que consumen mayor CPU
echo
echo "**** Procesos que consumen mayor CPU: ****";
#echo "--------------------------------------"
echo "|-----%CPU-----| |-----comando-----1"

echo "$(ps -e -o pcpu,cmd --sort pcpu | tail -n 10 )";
#echo "$(ps -e -o pcpu,pid --sort pcpu | tail -n 10 | sed '/^0.0 /d' | awk '{print $3, $11}')";
