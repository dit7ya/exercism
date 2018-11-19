#!/usr/bin/env bash
# This option will make the script exit when it tries to use an unset variable
#set -o nounset
# This option will make the script exit when there is an error
#set -o errexit

if [ "$1" = "total" ]
then
    to=$(echo 2^64 - 1 | bc)
    echo "$to"

elif [ "$1" -gt "64" ] || [ "$1" -le "0" ]
then
    echo "Error: invalid input"
    exit 1

else
    grains=$(echo "(2^($1 - 1))" | bc)
    echo "$grains"
fi
