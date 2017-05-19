#!/bin/bash
echo "INFORMACION DE LOS CORES Y MEMORIA: "
echo "TOTAL DE CORES: `grep "cpu cores" /proc/cpuinfo | awk '{print $4}' | paste -sd + | bc`"
echo "TOTAL DE MEMORIA: `awk '/Mem:/ {print $2}' <(free -gh)`"
