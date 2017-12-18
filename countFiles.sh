#!/bin/bash

LOCATION=$1
EXTEN=$2
FILECOUNT=0
DIRCOUNT=0

if [ ! -d "$LOCATION" ]
    then
	exit 1
elif [ ! -r "$LOCATION" ]
    then
	exit 1
fi


for item in $LOCATION/*$EXTEN
do
if [ -f "$item" ]
    then
         FILECOUNT=$[$FILECOUNT+1]
fi
done

echo $FILECOUNT

