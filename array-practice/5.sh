#!/bin/bash -x

x=0
for (( count=1; count<=100; count++))
do
	if [ $(( $count % 11 )) -eq 0 ]
	then
		a[$x]=$count
		x=$(( $x + 1 ))
	fi

done

echo ${a[@]}
