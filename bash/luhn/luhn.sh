#!/usr/bin/env bash

luhn () {
    num=$1
    num="${num//[[:space:]]/}" # removes all space chars 

    if ! [[ $num =~ ^-?[0-9]+$ ]] || [[ ${#num} -lt 2 ]] # check whether digits and whether length less than 2
    then
        echo "false"
        exit 0
    fi

    s=0 # init sum var

    # double every second digit
    for (( i=${#num}-2; i>=0; i-=2 )); do
        digit="${num:$i:1}"
        if  [[ $((2*digit)) -gt 9 ]]
        then
            ((s +=  2*digit - 9))
        else
            ((s +=  2*digit))
        fi
    done

    # add the rest of the digits
    for (( i=${#num}-1; i>=0; i-=2 )); do
        digit="${num:$i:1}"
        ((s +=  digit))
    done

    if [[ $((s%10)) = 0 ]]
    then
        echo "true"
    else
        echo "false"
    fi
}

luhn "$@"
