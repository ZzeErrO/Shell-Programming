#!/bin/bash -x

read -p "Enter the number to calculate its factor: " n
x=$n
a=2
count=0
while [ $a -ne $x ]
do
	for (( a=2; a<$x; a++ ))
	do
		if [ $(( $n % $a )) -eq 0 ]
		then
			b[$count]=$a
			count=$(( $count + 1 ))
			n=$(( $n / $a ))
			break
		fi
	done
done

c=0

while [ $c -lt 10 ]
do
	if [ ${b[$c]} -eq ${b[$(( $c + 1 ))]} ]
	then
		b[$c]=""
	fi
	c=$(( $c + 1 ))
done

echo ${b[@]}
