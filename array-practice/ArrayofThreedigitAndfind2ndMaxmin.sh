#!/bin/bash

function minimum() {
	local secondSmallest=0
	local small=$1
	for (( value=1; value<$number; value++ ))
	do
		if [ ${randomArray[$value]} -lt $small ]
		then
			secondSmallest=$small
			small=${randomArray[$value]}
		elif [ ${randomArray[$value]} -lt $secondSmallest ]
		then
			secondSmallest=${randomArray[$value]}
		fi
	done
	echo $secondSmallest
}


function maximum() {
   local secondLargest=0
   local large=$1
   for (( value=1; value<$number; value++ ))
   do
      if [ ${randomArray[$value]} -gt $large ]
      then
         secondLargest=$large
         large=${randomArray[$value]}
      elif [ ${randomArray[$value]} -gt $secondLargest ]
      then
         secondLargest=${randomArray[$value]}
      fi
   done
   echo $secondLargest
}



number=0
while [ $number -ne 10 ]
do
	random=$((RANDOM%1000))
	randomArray[((number++))]=$random
done


echo ARRAY: ${randomArray[@]}
echo SECOND SMALLEST ELEMENT:
minimum ${randomArray[1]}
echo SECOND LARGEST ELEMENT:
maximum ${randomArray[@]}
