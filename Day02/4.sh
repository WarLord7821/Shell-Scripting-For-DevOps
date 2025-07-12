#!/bin/bash
#Here we practice creating a demo user

read -p "Enter Username: " username
echo "Entered Username is: $username"

sudo useradd -m $username
echo "New User Added"
