#!/bin/bash -x

ONE=$(( RANDOM%1000 + 100))
TWO=$(( RANDOM%1000 + 100))
THREE=$(( RANDOM%1000 + 100))
FOUR=$(( RANDOM%1000 + 100))
FIVE=$(( RANDOM%1000 + 100))

if [ $ONE -gt $TWO -a $ONE -gt $THREE -a $ONE -gt $FOUR -a $ONE -gt $FIVE ]
then
	echo MAXIMUM $ONE
elif [ $TWO -gt $ONE -a $TWO -gt $THREE -a $TWO -gt $FOUR -a $TWO -gt $FIVE ]
then
	echo MAXIMUM $TWO
elif [ $THREE -gt $ONE -a $THREE -gt $TWO -a $THREE -gt $FOUR -a $THREE -gt $FIVE ]
then
	echo MAXIMUM $THREE
elif [ $FOUR -gt $TWO -a $FOUR -gt $THREE -a $FOUR -gt $ONE -a $FOUR -gt $FIVE ]
then
	echo MAXIMUM $FOUR
else
	echo MAXIMUM $FIVE
fi

if [ $ONE -lt $TWO -a $ONE -lt $THREE -a $ONE -lt $FOUR -a $ONE -lt $FIVE ]
then
   echo MINIMUM $ONE
elif [ $TWO -lt $ONE -a $TWO -lt $THREE -a $TWO -lt $FOUR -a $TWO -lt $FIVE ]
then
   echo MINIMUM $TWO
elif [ $THREE -lt $ONE -a $THREE -lt $TWO -a $THREE -lt $FOUR -a $THREE -lt $FIVE ]
then
   echo MINIMUM $THREE
elif [ $FOUR -lt $TWO -a $FOUR -lt $THREE -a $FOUR -lt $ONE -a $FOUR -lt $FIVE ]
then
   echo MINIMUM $FOUR
else #[ $FIVE -gt $TWO -a $FIVE -gt $THREE -a $FIVE -gt $FOUR -a $ONE -gt $FIVE ]
   echo MINIMUM $FIVE
fi
