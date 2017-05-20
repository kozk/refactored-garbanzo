#!/bin/bash
echo "INFORMACION DE LOS CORES Y MEMORIA EN TIEMPO REAL"
echo "TOTAL DE CORES: `top -i | grep %Cpu | awk '{print $2"\n"$4}' | paste -sd + | bc`"
echo "TOTAL DE MEMORIA: `awk '/Mem:/ {print $2}' <(free -gh)`"
