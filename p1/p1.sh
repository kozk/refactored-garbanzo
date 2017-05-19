#!/bin/bash
echo "INFORMACION DE LOS CORES Y MEMORIA EN TIEMPO REAL"
echo "TOTAL DE CORES: top -i | head -3 | grep %Cpu | awk '{print $2,$4}' | paste -sd + `"
echo "TOTAL DE MEMORIA: `awk '/Mem:/ {print $2}' <(free -gh)`"
