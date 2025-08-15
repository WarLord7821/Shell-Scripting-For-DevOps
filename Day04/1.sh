#!/bin/bash
#Here we write a script to automate the process of installing aws cli (if not installed)

function check_aws {
	if ! aws --version; then
		echo "Updating system...."
		sudo apt update
		sudo apt install -y unzip curl

		curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
		echo "Extracting installer..."
		unzip awscliv2.zip
		echo "Installing AWS CLI...."
		sudo ./aws/install

		echo "AWS CLI Installed with version:"
		aws --version

	else
		echo "AWS CLI already installed with version:"
		aws --version
	fi
}

check_aws

