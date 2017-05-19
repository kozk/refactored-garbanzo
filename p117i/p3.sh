#!/bin/bash
echo "ESTADOS DE LOS PROCESOS EN LINUX"
echo "#PROCESOS ESTADO R (RUNNING): `ps -e -o state | grep R | wc -l`"
echo "#PROCESOS ESTADO D (UNINTERRUPTIBLE SLEEP): `ps -e -o state | grep D | wc -l`"
echo "#PROCESOS ESTADO S (INTERRUPTIBLE SLEEP): `ps -e -o state | grep S | wc -l`"
echo "#PROCESOS ESTADO Z (DEFUNK,ZOMBIE): `ps -e -o state | grep Z | wc -l`"
echo "#PROCESOS ESTADO T (STOPPED): `ps -e -o state | grep T | wc -l`"
echo "#PROCESOS ESTADO O (OTHER): `ps -e -o state | grep O | wc -l`"
