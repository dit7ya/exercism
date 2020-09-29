#!/usr/bin/env bash

scr=0
word=${1^^} # convert to uppercase

for ((i = 0; i < ${#word}; i++)); do

    ltr=${word:$i:1}

	  if [[ $ltr = ["AEIOULNRST"] ]]; then
		    ((scr+= 1))

	  elif [[ $ltr = ["DG"] ]]; then
		    ((scr += 2))

	  elif [[ $ltr = ["BCMP"] ]]; then
		    ((scr += 3))

	  elif [[ $ltr = ["FHVWY"] ]]; then
		    ((scr += 4))

	  elif [[ $ltr = ["K"] ]]; then
		    ((scr += 5))

	  elif [[ $ltr = ["JX"] ]]; then
		    ((scr += 8))

	  else
		    ((scr += 10))

	  fi

done

echo "$scr"
