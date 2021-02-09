#!/bin/bash -x

for (( count=0; count<10; count++ ))
do
a[$count]=$((RANDOM%1000+100))
done

c=0
while [ $c -lt 10 ]
do

	for (( x=0; x<10; x++ ))
	do
		if [ ${a[x]} -gt ${a[x+1]} ]
		then
			i=${a[x+1]}
			a[x+1]=${a[x]}
			a[x]=$i
		fi
	done
	c=$(( $c + 1 ))
done

echo ARRAY: ${a[@]}
echo SECOND SMALLEST ELEMENT: ${a[1]}
echo SECOND LARGEST ELEMENT: ${a[8]}
