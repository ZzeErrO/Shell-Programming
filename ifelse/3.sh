#!/bin/bash

read -p "ENTER A NUMBER LESS THAN A MILLION: " x

p=$(( x % 10 ))
echo $p
q=$((( x % 100 - $p ) / 10 ))
echo $q
r=$((( x % 1000 - $p - $q *10 ) / 100 ))
echo $r
s=$((( x % 10000 - $p - $q * 10 - $r * 100 ) / 1000 ))
echo $s
t=$((( x % 100000 - $p - $q * 10 - $r * 100 - $s * 1000 ) / 10000 ))
echo $t
u=$((( x % 1000000 - $p - $q * 10 - $r * 100 - $s * 1000 - $t * 10000 ) / 
100000 ))
echo $u

