echo "Enter range"
read range

a1=0
a2=1
count=0

echo " "
echo "Fibbonaci Series..."
echo "$a1"
echo "$a2"
while [ $count -lt $range ]
do
		a3=`expr $a1 + $a2`
		a3=$((a1 + a2))		#This is another method
		echo "$a3 "
		a1=$a2
		a2=$a3
		inc=1
		count=`expr $count + 1`
		#echo "count = $count"
done

