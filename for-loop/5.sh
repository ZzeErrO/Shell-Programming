#!/bin/bash -x

read -p "Enter the number to calculate its factorial: " n
FACT=1

if [$n -eq 1 -o $n -eq 0 ]
then
	echo $FACT
else
	for (( counter=$n; counter>=1; counter-- ))
	do
		FACT=$(( $FACT * $counter ))
	done
	echo $FACT
fi
