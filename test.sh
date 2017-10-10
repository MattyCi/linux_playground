#!/bin/sh
APPEND0=<script type="text/javascript" src="/includes/notemplate/googleanaltyics.js"></script>
APPEND1=<script type="text/javascript" src="/includes/foresee/foresee-trigger-stg-online.js"></script>
. ./filelist.sh

for file in $FILES
do

printf "/print\.css/a\n$APPEND0\n$APPEND1\n.\nw\nq\n" | ed $file

done  

exit 0
