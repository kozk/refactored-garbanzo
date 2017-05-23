#!/bin/bash
numerodeProcesos=`top -i | head -2 | grep Tasks | awk '{print $2}'`
echo "TOTAL DE PROCESOS EN EL SISTEMA:"$numerodeProcesos
echo "PORCENTAJE DE CPU QUE UTILIZAN: `top -i | head -3 | grep "Cpu(s)"  | awk '{print $2}'`"
