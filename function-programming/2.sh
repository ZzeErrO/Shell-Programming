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
	a=$1
	b=$2
	c=$3
	d=$4
	e=$5
	f=$6
	g=$7
	h=$8
	i=$9
	j="$10"
	k="$11"
	l="$12"
	for i in (1 2 3 4 5 6):
		if [ a -ne l ]
		then
			echo not palindrome
		elif [ $b -ne $k ]
		fi

}

result=$( check "${a[@]}" "${b[@]}" )
echo $result
