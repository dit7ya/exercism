#!/usr/bin/env bash


phrase=$(echo $1 | xargs echo -n)

if [[ ${#phrase} == 0 ]]
then
    echo 'Fine. Be that way!'


elif [[ $phrase =~ \?$ ]]
then
    if [[ $phrase =~ [a-z0-9\!\@\#\$\%\^\&\*] ]]   #check if there is any lowercase letter
    then
        echo "Sure."
    else
        echo "Calm down, I know what I'm doing!"
    fi

elif [[ $phrase =~ [a-z0-9] ]]
then
    echo 'Whatever.'

else
    echo 'Whoa, chill out!'
fi


exit 0



