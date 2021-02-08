#!/bin/bash -x

n=$1


for (( counter=2; counter<$n; counter++))
do
	if [ $(( $n % $counter)) -eq 0 ]
	then
		echo NOT PRIME
		break
	fi
done

if [ $counter -eq $n ]
then
	echo PRIME
fi
