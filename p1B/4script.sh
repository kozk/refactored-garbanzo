#!/bin/bash
#Alumna: Rodríguez Pérez Blanca Esthela
#Script que muestra la cantidad de procesos en cada estado    
echo "Los estados de un proceso son: R(runnig), S(sleping), D(stopped), Z(zombie), T";
echo "Selecciona alguna: ( R, S, D, Z, T)"

read opcion
case $opcion in

    R)echo "**** PROCESO EN ESTADO RUNNING ****"
      echo "CANTIDAD"
      ps aux | grep "R" | sed '1,1 d' | sort | uniq -c | wc -l ;;
    S)echo "**** PROCESO EN ESTADO SLEPING ****"
      echo "CANTIDAD"
      ps aux | grep "S" | sed '1,1 d' | sort | uniq -c | wc -l ;;
    D)echo "**** PROCESO EN ESTADO STOPPED ****"
      echo "CANTIDAD"
      ps aux | grep "D" | sed '1,1 d' | sort | uniq -c | wc -l  ;;
    Z)echo "**** PROCESO EN ESTADO ZOMBIE ****"
      echo "CANTIDAD"
      ps aux | grep "Z" | sed '1,1 d' | sort | uniq -c | wc -l  ;;
    T)echo "**** PROCESO EN ESTADO T ****"
      echo "CANTIDAD"
      ps aux | grep "T" | sed '1,1 d' | sort | uniq -c | wc -l ;;

  esac


