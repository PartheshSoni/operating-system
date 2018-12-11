echo "Enter a number to be reversed: "
read n
temp=$n
mod=10
echo "The reversed number is..."
while [ $temp -gt 0 ]
do	
	intemp=`expr $temp % $mod`
	printf $intemp
	temp=`expr $temp / $mod`
done
echo " "
