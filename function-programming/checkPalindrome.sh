#!/bin/bash -x

function palindrome() {
	number=$1
	reverse=0
	while [ $number -ne 0 ]
	do
		temp=$(($number%10))
		number=$(($number/10))
		reverse+=$(($temp))
	done
	if [ $1 -eq $reverse ]
	then
		echo $number IS A PALINDROME
	else
		echo $number IS NOT A PALINDROME
	fi

}


read -p "Enter a number to check if it ia a Palindrome: " num

palindrome $num
