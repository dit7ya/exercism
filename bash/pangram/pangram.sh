#!/usr/bin/env bash


for i in {a..z}; do

    u=${i^^}    # uppercase of the char
    if [[ $1 =~ $i ]] || [[ $1 =~ $u ]]; then
             continue
         else
             echo 'false'
             exit 0
         fi
done

echo 'true'
exit 0
