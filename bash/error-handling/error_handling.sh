#!/usr/bin/env bash

if [[ $# == 0 ]]
then
     echo "Usage: ./error_handling <greetee>"
     exit 1
elif [[ $# -ge 2 ]]
then
    exit 2
else
    echo "Hello, $1"
fi
exit 0
