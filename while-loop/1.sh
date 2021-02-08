#!/bin/bash

x=$1
counter=1
count=1
if [ $x -gt 8 ]
then
	x=8
fi

while [ $count -le $x ]
do
	echo 2**$count=$((2 * $counter))
	counter=$(($counter * 2))
	count=$(( $count + 1 ))
done
