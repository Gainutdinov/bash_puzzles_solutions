#!/bin/bash

MYARRAY=("First" "Second" "Third") # spaces are mandatory!

echo ${MYARRAY[0]}

echo ${MYARRAY[*]}

MYARRAY[3]="Fourth"

# simple array list and loop foor display

SERVERLIST=("websrv01" "websrv02" "websrv03" "websrv04")
COUNT=0

for INDEX in ${SERVERLIST[@]}; do
  echo "Processing Server: ${SERVERLIST[COUNT]}"
  COUNT="`expr $COUNT + 1`"
done
