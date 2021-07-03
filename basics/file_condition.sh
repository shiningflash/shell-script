#! /bin/bash

#####
# -d file   True if file is a directory
# -e file   True if file/directory exists
# -f file   True if the provided string is a file (recommended)
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -w        True if the file is writable
# -x        True if the file is executable
####

FILE="file.txt"

if [ -f "$FILE" ]
then
    echo "$FILE is a file"
else
    echo "$FILE is NOT a file"
fi