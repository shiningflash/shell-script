#! /bin/bash

# SIMPLE FOR LOOP

# EXAMPLE 1
NAMES="HELLO!"
for NAME in $NAMES
    do
        echo "HEY $NAME"
done

# EXAMPLE 2
touch file1.txt file2.txt

FILES=$(ls *.txt)
NEW="new"
NAME="files"

for FILE in $FILES
    do
        echo "Renaming $FILE to new-$FILE"
        mv $FILE $NEW-$FILE
done