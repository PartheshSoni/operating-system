stop=0
while [ $stop -eq 0 ] 
do
echo " "
echo "Choose from the following operations: "
echo "1. Insert data into database"
echo "2. View database"
echo "3. Search record from database"
echo "4. Delete record"
echo "5. Exit"
echo "Choice: "
read n

case $n in 
	1) echo "Enter Roll Number: "
	read roll
	search=`grep -c -i "$roll" Student `
	if [ $search -eq 0 ]   
	then	
		echo "Enter name: "
		read name
		echo "$roll | $name"  >> Student
		echo "Insertion operation successful"
	else
		echo "Record already exsists"
	fi
	 sort -k1 -n Student
	;;
	2)cat Student;;
	3)echo "Enter Roll Number to display: "
	read rolln
	search=` grep -c -i "$rolln" Student `
	if [ $search -eq 0 ]
	then	
	echo "No such records found"
	else
		grep -i "$rolln" Student
	fi;;
	4)echo "Enter Roll Number to for deletion: "
	read rolno
	seach=` grep -c -i "$rolno" Student `
	if [ $seach -eq 0 ]
	then 
		echo "Record not present"
	else
		grep -v "$rolno" Student > temp 
		mv temp Student
		echo "Deletion successful!"	
	fi;;
	5)stop=` expr 1 `;;
	*)echo "Enter correct choice";;
esac
done






