#!/bin/bash
echo "TOTAL DE PROCESOS EN EL SISTEMA: `top -i | head -2 | grep Tasks | awk '{print $2}'`"
