#! /bin/bash

FILES=$(ls *.txt)
NAME="MY NAME HERE"

for FILE in $FILES
    do
        echo -e "\n$NAME" >> $FILE
done