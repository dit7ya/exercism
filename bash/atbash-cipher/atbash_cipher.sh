#!/usr/bin/env bash

plain='abcdefghijklmnopqrstuvwxyz'
cipher='zyxwvutsrqponmlkjihgfedcba'

if [ $1 == 'encode' ]
then
    echo ${@:2} | tr -d "[:space:].," | tr "[:upper:]" "[:lower:]" | tr $plain $cipher | sed 's/.\{5\}/& /g;s/ $//'
fi

if [ $1 == 'decode' ]
then
    echo ${@:2} | tr -d "[:space:]" | tr $plain $cipher
fi
