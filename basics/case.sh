#! /bin/bash

# CASE STATEMENT

read -p "Are you 18 or over? Y/N " RESPONSE

case "$RESPONSE" in
    [yY] | [yY][eE][sS])
        echo "yeeee! You can vote :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry! You can not vote :("
        ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac