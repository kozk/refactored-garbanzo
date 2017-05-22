#!/bin/bash
echo "SISTEMAS OPERATIVOS - PRACTICA 1 - PROBLEMA 1"
echo "INFORMACION DE LOS CORES Y CPU EN TIEMPO REAL"
echo "USO TOTAL DE CPU: `top -i | head -3 | grep %Cpu | awk '{print $2"\n"$4}' | paste -sd + | bc`"
echo "USO TOTAL DE MEMORIA EN KB: `top -i | head -4 | grep Mem | awk '{print $6}'`"
