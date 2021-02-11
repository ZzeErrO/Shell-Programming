#!/bin/bash -x

read -p "ENTER 1ST NUMBER: " a
read -p "ENTER 2ND NUMBER: " b
read -p "ENTER 3RD NUMBER: " c

w=$(( $a + $b * $c ))
x=$(( $a % $b + $c ))
y=$(( $c + $a / $b ))
z=$(( $a * $b + $c ))

if [ $w -gt $x -a $w -gt $y -a $w -gt $z ]
then
	echo MAXIMUM $w
elif [ $x -gt $w -a $x -gt $y -a $x -gt $z ]
then
   echo MAXIMUM $x
elif [ $y -gt $x -a $y -gt $w -a $y -gt $z ]
then
   echo MAXIMUM $y
else
   echo MAXIMUM $z
fi

if [ $w -lt $x -a $w -lt $y -a $w -lt $z ]
then
   echo MINIMUM $w
elif [ $x -lt $w -a $x -lt $y -a $x -lt $z ]
then
   echo MINIMUM $x
elif [ $y -lt $x -a $y -lt $w -a $y -lt $z ]
then
   echo MINIMUM $y
else
   echo MINIMUM $z
fi
