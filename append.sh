#!/bin/sh
APPEND0="test"
APPEND1="test!"
for grep in "find . -type f -name "*.htm" -exec grep -l "print.css" '{}' \;"
do
printf "/print\.css/a\n$APPEND0\n$APPEND1\n.\nw\nq\n" | ed $grep
done
