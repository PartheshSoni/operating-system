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
				echo 'First is greatest'
		else
				echo 'Third is greatest'
		fi
else
	echo 'Second is max'
