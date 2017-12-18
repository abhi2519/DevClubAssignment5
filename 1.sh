#!/bin/bash
LOC=$1
EXT=$1
NUMFILE=0
NUMDIR=0

for item in $loc/*$EXT
do
if [ -f "$item" ]
  then
    NUMFILE=$[NUMFILE+1]
  elif [ -d "$item" ]
    then
     NUMDIR=$[NUMDIR+1]
     
fi
done

echo The number of files are $NUMFILE
