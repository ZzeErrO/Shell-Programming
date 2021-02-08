#!/bin/bash -x

HEAD=1
TAIL=0
COUNT_HEAD=0
COUNT_TAIL=0
while [ $COUNT_HEAD -ne 11 -a $COUNT_TAIL -ne 11 ]
do
	check=$((RANDOM%2))
	echo $check
	if [ $HEAD -eq $check ]
	then
		COUNT_HEAD=$(( $COUNT_HEAD + 1 ))
	else
		COUNT_TAIL=$(( $COUNT_TAIL + 1 ))
	fi
done

if [ $COUNT_HEAD -gt $COUNT_TAIL ]
then
	echo HEAD WINS
else
	echo TAIL WINS
fi
