#!/bin/bash -x

c=0
while [ $c -lt 3 ]
do
	read -p "Enter three Integers: " a[$c]
	c=$(( $c + 1 ))
done

echo ${a[@]}

if [ $(( ${a[0]} + ${a[1]} + ${a[2]} )) -eq 0 ]
then
	echo SUM IS ZERO
else
	echo SUM IS NOT ZERO
fi
