#!/bin/bash -x

read -p "Think of a number between 1 to 100: " x

n=$x

while [ $n / 2 -ne $x ]
do
	if [ $(($n / 2)) -lt $x ]
	then
		n=$(( $n / 2 ))
		echo $n
	elif [ $(($n / 2)) -gt $x ]
	then
		n=$(( $n / 2 ))
		echo $n
	else
		echo $n
	fi
done
