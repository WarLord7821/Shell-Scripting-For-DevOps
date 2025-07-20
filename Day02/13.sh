#!/bin/bash
#Practice of Functions with input from argument
function Thala_check() {
read -p "Enter Player Name: " name
if [[ $name == "$1" ]];
then
        echo "Thala for a Reason"
elif [[ $name == "$2" ]];
then
        echo "Still Thala for a Reason"
else
        echo "No thala"
fi
}

#This is function calling
Thala_check "Dhoni" "Mahendra"
