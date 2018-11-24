#!/usr/bin/env bash

num=$1
sum=0
n_dig=${#num} # get number of digits
while [ "$num" -gt 0 ]; do
    last_dig=$(( num % 10)) # get last digit
    num=$(( num /10 )) # get everything except the last digit
    sum=$(( sum + last_dig**n_dig))
done

if [ $sum -eq "$1" ]
then
    echo "true"
    exit 0
else
    echo "false"
    exit 0
fi

