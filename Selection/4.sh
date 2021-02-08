#!/bin/bash -x

HEAD=1
TAIL=0

flip=$(( RANDOM%2 ))

if [ $HEAD -eq $flip ]
then
	echo HEAD
else
	echo TAIL
fi
