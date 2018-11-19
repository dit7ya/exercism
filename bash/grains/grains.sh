#!/usr/bin/env bash
# This option will make the script exit when it tries to use an unset variable
#set -o nounset
# This option will make the script exit when there is an error
#set -o errexit


to=$(echo 2^64 - 1 | bc)

if [ "$1" = "total" ]
then
    echo "$to"
else
    #((grains=2**($1-1)))
    grains=$(echo 2^$(echo $1 - 1 | bc) | bc)
    echo "$grains"
fi

:+1:
:es:
