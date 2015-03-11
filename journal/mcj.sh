#!/bin/bash
##Create a text file which combines all journal entries into one
## and gives it the name of the current month.
for filename in $( ls -r -t *.txt )
do
    if [ "$filename" != "`date +%B`.txt"  ]
    then
        echo "$filename"
        cat "$filename"
        echo
    fi
done > ~/Dropbox/Apps/Plain.txt/`date +%B`.txt
