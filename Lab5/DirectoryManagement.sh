echo "\t\tMenu\n
	1. Display the current working directory.\n
	2. List Directory.\n
	3. Make Directory.\n
	4. Change Directory.\n
	5. Change Permission.\n
	

    Enter Your Choice:- \c"
	  read choice

case "$choice" in
	1) pwd;;
	2) ls ;;
	3) echo "Enter name of directory:"
		read dir;
		if [ -d $dir ] 
			then	 
			echo "Directory already exists!";
		else
			mkdir $dir;
		fi;;
	4) echo "Move level up or down(1/0):"
		read op
		if [ $op -eq 1 ]
		then	
			echo "Enter name of directory"
			read dir2
			if [ -d $dir2 ]
			then
				echo "Please enter valid name"
			else
			
			cd $dir2;
			fi	
		else 
				cd ..;
		fi;;
	5) echo "Enter name of Directory: "
		read dir3
	 
		if [ -d $dir3 ]
			then
			echo "Enter permission number:"
			read per
			chmod $per $dir3
		else
			echo "Files doesnot exists"
		fi;;
	
	
esac
