#! /bin/bash

read -p "Enter a number: " ID

YEAR=$(echo $ID | cut -c1-2)
SEMESTER=$(($(echo $ID | cut -c3)-1))
DEPT=$(echo $ID | cut -c4-5)

SEMESTER_NAMES=(Spring Fall Summer)

if [ $DEPT == "01" ]
then
    echo "The student is from Dept. of CSE enrolled in ${SEMESTER_NAMES[$SEMESTER]} 20$YEAR"
else
    echo "The student is not from Dept. of CSE"
fi 