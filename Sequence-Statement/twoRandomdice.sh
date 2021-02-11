#!/bin/bash -x

singleDigit1=$(( RANDOM%6 + 1 ))
singleDigit2=$(( RANDOM%6 + 1 ))
echo $singleDigit1 + $singleDigit2 = $(($singleDigit1 + 
$singleDigit2))
