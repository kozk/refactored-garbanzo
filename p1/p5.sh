#!/bin/bash
echo "SISTEMAS OPERATIVOS - PRACTICA 1 - PROBLEMA 5"
echo "TOTAL DE PROCESOS EN EL SISTEMA: `top -i | head -2 | grep Tasks | awk '{print $2}'`"
echo "TOTAL DE MEMORIA QUE CONSUMEN: `top -i | head -4 | grep Mem | awk '{print $6}'`"
