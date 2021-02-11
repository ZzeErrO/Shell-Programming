#!/bin/bash


read -p "Enter the number of input: " x

for (( a=1; a<=$x; a++ ))
do
	read -p "Enter the number to check if its prime: " n
	for (( counter=2; counter<$n; counter++))
	do
		if [ $(( $n % $counter)) -eq 0 ]
		then
			break
		fi
	done

	if [ $counter -eq $n ]
	then
		echo PRIME
	fi
done
