#!/bin/bash

n=sqrt$1
count=1
echo $n
while [ 2 -le $n ]
do
	echo 2**$count
	count+=1
done
