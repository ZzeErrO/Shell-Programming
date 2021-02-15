#!/bin/bash -x

read -p "Think of a number between 1 to 100: " x
a=100
b=0
count=1
n=$(( ($a + $b) / 2 ))
while [ $n -ne $x ]
do
	if [ $n -gt $x ]
	then
		a=$n
		n=$(( ($a + $b) / 2 ))
	elif [ $n -lt $x ]
	then
		b=$n
		n=$(( ($a + $b) / 2 ))
	fi
	count=$(( $count + 1 ))
done

echo MAGIC NUMBER REACHED IN $count
