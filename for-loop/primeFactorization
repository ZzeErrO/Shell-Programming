#!/bin/bash

read -p "Enter the number to calculate its factor: " n
x=$n
a=2
while [ $a -ne $x ]
do
	for (( a=2; a<$x; a++ ))
	do
		if [ $(( $n % $a )) -eq 0 ]
		then
			echo $a
			n=$(( $n / $a ))
			break
		fi
	done
done
