#!/bin/bash -x

read -p "ENTER THE YEAR OF CHOICE: " y
echo $y
A=$(( $y % 400 ))
B=$(( $y % 100 ))
C=$(( $y % 4 ))

if [ $A -eq 0 ]
then
	echo LEAP YEAR
elif [ $B -eq 0 ]
then
	echo NOT LEAP YEAR
elif [ $C -eq 0 ]
then
	echo LEAP YEAR
else
	echo NOT A LEAP YEAR
fi
