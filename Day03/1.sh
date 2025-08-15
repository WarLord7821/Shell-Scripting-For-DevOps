#!/bin/bash
#We learn and practice Error Handling here

function Create_Directory {
	mkdir Demo
}

if ! Create_Directory; then
	echo "Directory cannot be created as it already exists"
	exit 1
fi

echo "This line should not work on 2nd run"
