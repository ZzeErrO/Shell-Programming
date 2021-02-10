#!/bin//bash -x

declare -A dict
a=1
b=1
c=1
d=1
e=1
f=1
while [ $a -lt 10 -a $b -lt 10 -a $c -lt 10 -a $d -lt 10 -a $e -lt 10 -a $f -lt 10 ]
do
	roll=$((RANDOM%6+1))

	case $roll in
		1)
			a=$(($a+1))
			dict[1]=$a
		;;
		2)
			b=$(($b+1))
			dict[2]=$b
		;;
		3)
			c=$(($c+1))
			dict[3]=$c
		;;
		4)
			d=$(($d+1))
			dict[4]=$d
		;;
		5)
			e=$(($e+1))
			dict[5]=$e
		;;
		6)
			f=$(($f+1))
			dict[6]=$f
		;;
	esac

done

echo ${dict[@]}
echo ${!dict[@]}

x=${dict[1]}

for (( count=1; count<=5; count++ ))
do

	#x=${dict[$count]}
   #y=${dict[$(($count+1))]}

	if [ ${dict[$count]} -lt ${dict[$(($count+1))]} ]
	then
		if [ $x -ge ${dict[$count]} ]
		then
			x=${dict[$count]}
			echo $x
		fi
	fi

done

for (( counter=1; counter<=6; counter++ ))
do

	if [ ${dict[$counter]} -eq 10 ]
	then
		echo MAXIMUM TIMES OCCURED DICE NUMBER IS $counter FOR A TOTAL OF 10 TIMES
	fi

	if [ ${dict[$counter]} -eq $x ]
	then
		echo MINIMUM TIMES OCCURED DICE NUMBER IS $counter FOR A TOTAL OF $x TIMES
	fi

done

