#!/bin/bash
#Alumna: Rodríguez Pérez Blanca Esthela
#Este script nos muestra la cantidad de cores y memoria que tiene la máquina

echo "**** Cantidad de Cores ****"; 
#número de núcleos /cores
cat /proc/cpuinfo | grep "cpu cores" 

echo "**** Cantidad de Memoria ****";
#cat /proc/meminfo/grep "MemTotal"
echo "$(free -h | grep "Mem" | awk '{printf $2}')"
