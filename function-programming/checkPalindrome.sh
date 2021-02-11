#!/bin/bash -x

read -p "Enter number less than a million to check if it is palindrome: " x
read -p "Enter another number less than a million to check if it palindrome: " n
c=0
p=$(( x % 10 ))
a[((c++))]=$p
q=$((( x % 100 - $p ) / 10 ))
a[((c++))]=$q
r=$((( x % 1000 - $p - $q *10 ) / 100 ))
a[((c++))]=$r
s=$((( x % 10000 - $p - $q * 10 - $r * 100 ) / 1000 ))
a[((c++))]=$s
t=$((( x % 100000 - $p - $q * 10 - $r * 100 - $s * 1000 ) / 10000 ))
a[((c++))]=$t
u=$((( x % 1000000 - $p - $q * 10 - $r * 100 - $s * 1000 - $t * 10000 ) / 100000 ))
a[((c++))]=$u


c=5
p=$(( n % 10 ))
b[((c--))]=$p
q=$((( n % 100 - $p ) / 10 ))
b[((c--))]=$q
r=$((( n % 1000 - $p - $q *10 ) / 100 ))
b[((c--))]=$r
s=$((( n % 10000 - $p - $q * 10 - $r * 100 ) / 1000 ))
b[((c--))]=$s
t=$((( n % 100000 - $p - $q * 10 - $r * 100 - $s * 1000 ) / 10000 ))
b[((c--))]=$t
u=$((( n % 1000000 - $p - $q * 10 - $r * 100 - $s * 1000 - $t * 10000 ) / 100000 ))
b[((c--))]=$u

echo ${a[@]}
echo ${b[@]}



function check() {
	arr=("$1")
	#v=$1
	#w=$2
	#msg="$1"
	echo ${arr[@]}
	#for i in "${arr[@]}"
	#do
	#	echo "$msg $i"
	#done
}

result=$( check "${a[@]}" "${b[@]}")
echo $result
