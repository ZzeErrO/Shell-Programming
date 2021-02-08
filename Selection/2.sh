#!/bin/bash -x
d=$1
m=$2
if [ $m -eq 3 -o $m -eq 4 -o $m -eq 5 -o $m -eq 6 ]
then
	if [ $m -eq 3 ]
	then
		if [ $d -gt 20 ]
		then
			echo TRUE
		else
			echo FALSE
		fi
	elif [ $m -eq 6 ]
	then
		if [ $d -lt 20 ]
		then
			echo TRUE
		else
			echo FALSE
		fi
	else
		echo TRUE
	fi
else
	echo FALSE
fi
