#!bin/bash
#here we practice if-elif-else
read -p "Enter Player Name: " name
if [[ $name == "Dhoni" ]];
then
	echo "Thala for a Reason"
elif [[ $name == "Mahendra" ]];
then 
	echo "Still Thala for a Reason"
else
	echo "No thala"
fi
