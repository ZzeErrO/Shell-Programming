#!/bin/bash

n=$1
count=1
for (( counter=1; counter<=$n; counter++ ))
do
	echo 2**$counter=$(( $count * 2 ))
	count=$(( $count * 2 ))
done
