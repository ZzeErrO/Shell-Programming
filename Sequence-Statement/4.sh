#!/bin/bash -x

ONE=$(( RANDOM%100 + 10 ))
TWO=$(( RANDOM%100 + 10 ))
THREE=$(( RANDOM%100 + 10 ))
FOUR=$(( RANDOM%100 + 10 ))
FIVE=$(( RANDOM%100 + 10 ))

echo $(( ONE + TWO +THREE +FOUR +FIVE ))
echo $((( ONE + TWO +THREE +FOUR +FIVE ) / 5 ))

