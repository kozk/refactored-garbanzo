#!/bin/bash
<<<<<<< HEAD
<<<<<<< HEAD
echo "INFORMACION DE LOS CORES Y MEMORIA EN TIEMPO REAL"
echo "TOTAL DE CORES: `top -i | grep %Cpu | awk '{print $2"\n"$4}' | paste -sd + | bc`"
=======
echo "INFORMACION DE CPU Y MEMORIA EN TIEMPO REAL"
echo "TOTAL DE CPU: `top -i | head -3 | grep %Cpu | awk '{print $2,$4}' | paste -sd + `"
>>>>>>> f4e46f1d934da520ff055981ad214aca45c1905a
=======
echo "INFORMACION DE CPU Y MEMORIA EN TIEMPO REAL"
echo "TOTAL DE CPU: `top -i | head -3 | grep %Cpu | awk '{print $2,$4}' | paste -sd + `"
>>>>>>> f4e46f1d934da520ff055981ad214aca45c1905a
echo "TOTAL DE MEMORIA: `awk '/Mem:/ {print $2}' <(free -gh)`"
