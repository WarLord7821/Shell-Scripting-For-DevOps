#!/bin/bash
#Advanced Practice of For loops
<<task
$1 is 1st argument which will be folder name here
$2 is 2nd argument which will be start of for loop (from which range the folder has to be created)
$3 is 3rd argument end of range
task

for (( i=$2 ; i<=$3 ; i++ ))
do
	mkdir "$1$i"
echo "folder $i with name $1$i created"
done

for (( i=$2 ; i<=$3 ; i++ ))
do
	rmdir "$1$i"
	echo "folder with name $1$i removed"
done
