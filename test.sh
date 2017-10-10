#!/bin/sh
APPEND0=test0
APPEND1=test1
. ./filelist.sh
                  

for file in $FILES
do

printf "/print\.css/a\n$APPEND0\n$APPEND1\n.\nw\nq\n" | ed $file

done  

exit 0
