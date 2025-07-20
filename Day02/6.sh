#!/bin/bash
#We practice if-else condtions here

read -p "Enter Name of Player: " name
if [[ $name == "Dhoni" ]];
then
	echo "Thala for a Reason"
else
	echo "No Thala"
fi
