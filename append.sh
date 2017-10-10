#!/bin/sh
APPEND0="test"
APPEND1="test!"
for find . -type f -exec grep -l "print.css" '{}' \;
do
printf "/print\.css/a\n$APPEND0\n$APPEND1\n.\nw\nq\n" | ed $GREP
done


