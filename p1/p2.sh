#!/bin/bash
echo "SISTEMAS OPERATIVOS - PRACTICA 1 - PROBLEMA 2"
echo "VELOCIDAD: `lscpu | grep "CPU max" | awk '{print int($4)}'` MHz"
