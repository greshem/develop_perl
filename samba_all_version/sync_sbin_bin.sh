#!/bin/bash
for each in $(find $(pwd)  -type d -name sbin); 
do 
echo cp $each/*  $(echo $each|sed 's/sbin/bin/g'); 
done


