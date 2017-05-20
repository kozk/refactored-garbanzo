#!/bin/bash
echo "INFORMACION DE CPU Y MEMORIA EN TIEMPO REAL"
echo "TOTAL DE CPU: `top -i | head -3 | grep %Cpu | awk '{print $2 \n$4}' | paste -sd + `"
echo "TOTAL DE MEMORIA: `awk '/Mem:/ {print $2}' <(free -gh)`"
