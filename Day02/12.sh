#!/bin/bash
#Practice of Functions
function Thala_check() {
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
}

#This is function calling
Thala_check
