#!/usr/bin/env bash


phrase=$(echo "$1" |tr -d ' \n\t\r')

if [[ ${#phrase} == 0 ]]
then
    echo 'Fine. Be that way!'

elif [[ $phrase =~ \?$ ]]
then

    if ! [[ $phrase =~ [a-z0-9:\)] ]]  #check if there is any lowercase letter or number
    then
        echo "Calm down, I know what I'm doing!"
    else
        echo "Sure."
    fi

elif ! [[ $phrase =~ [a-z] ]] && [[ $phrase =~ [A-Z] ]]
then
    echo 'Whoa, chill out!'
else
    echo 'Whatever.'
fi

exit 0





