$a 
read a
$b
read b
$c
read c

if [ $a -gt $b ]
	then 
		if [ $a -gt $c ]
			then
				echo 'c is 2nd max'
		else
				echo 'a is 2nd max'
		fi
else
	if [ $b -gt $c ]
		then
			if [ $a -gt $c]
				then
					echo 'a is 2nd max'
			else
				echo 'c is 2nd max'
			fi
	else
		echo 'b is 2nd max'
	fi
fi
