#!/usr/bin/env bash

s1=$1
s2=$2
len1=${#s1}
len2=${#s2}

if [ $# = 0 ]
then
    echo "Usage: hamming.sh <strand1> <strand2>"
    exit 1
fi


if [ "$len1" -ne "$len2" ]
then
    echo "left and right strands must be of equal length"
    exit 1
fi
counter=0
for i in $(seq 0 $len1); do
    if [ "${s1:i:1}" != "${s2:i:1}" ]
    then
        counter=$((counter + 1))
    else
        continue
    fi
done

echo "$counter"
