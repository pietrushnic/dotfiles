#!/bin/bash
FILES=$(find . -iname '*.uni')
for file in $FILES ; do
	OUT=$(iconv -f UTF16 -t UTF-8 $file| grep $1)
	if [ ! -z "$OUT" -a "$OUT" ]; then
	    echo "$file:$OUT"
	fi 
done
