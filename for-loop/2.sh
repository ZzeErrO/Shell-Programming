#!/bin/bash

a=1
d=1
n=$1
echo -n Hn=
for (( counter=1; counter<=$n; counter++))
do
	echo -n
	echo -n 1/$(( $a + ( $counter - 1 ) * $d ))
	echo -n  + 
	echo -n
done
