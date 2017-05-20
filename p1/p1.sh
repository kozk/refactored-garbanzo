#!/bin/bash
echo "INFORMACION DE LOS CORES Y MEMORIA EN TIEMPO REAL"
echo "USO TOTAL DE CPU: `top -i | head -3 | grep %Cpu | awk '{print $2,$4}' | paste -sd + `"
echo "USO TOTAL DE CPU: `top -i | head -4 | grep %Mem | awk '{print $6}'`"
