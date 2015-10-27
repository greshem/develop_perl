#!/bin/bash
/bin/extract_all_tar.pl 
/bin/extract_all_tar.pl |sh 
find -type d -name souce  > /tmp/tmp
for each in $(tac /tmp/tmp); 
do 
cd $each; 
./configure --prefix=/opt/$(basename $(dirname $each)) ; 
make clean; make install  ; 
done

