#!/bin/bash
#
#Este script nos muestra si la computadora es multiprocesador y/o multicore, 
#cuantos procesadores tiene, cuantos cores tiene cada procesador y la velocidad 
#maxima


#muestra el numero de procesadores
SCRIPT=`grep processor /proc/cpuinfo | wc -l`

#muestra el numero de cores
CORE=`cat /proc/cpuinfo | grep "cpu cores"|awk '{printf $4}'`

#muestra la velocida maxima
VELOCIDAD=`lscpu | grep "CPU MHz" |awk '{printf $3}'`


if  (($SCRIPT >1))
      then
      if(($CORE>0))
      then
           echo "La computadora tiene "  $SCRIPT    "  procesador(es) "
           echo "La computadora tiene "  $CORE   "  CORE(S) "
           echo "Su velocida maxima es " $VELOCIDAD  "  MHz"
       fi
else
    echo "La computadora solamente tiene  un procesador "
     echo "La computadora tiene "  $CORE   "  CORE(S) "
     echo "Su velocida maxima es " $VELOCIDAD  "  MHz" 
fi

