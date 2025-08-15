#!/bin/bash
#First Shell Scripting project where we learn to deploy a app using shell scripting
<<task
Deploy a Django app
and handle the code for errors
task

code_clone() {
	echo "Cloning the Django app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements() {
	echo "Installing Dependencies"
	sudo apt-get install docker.io nginx -y
}

required_restarts() {
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	systemctl restart docker
	echo "Inside required_restarts"
}

deploy() {
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
	echo "Inside deploy"
}

echo "*************** Deployment started *****************"
if ! code_clone; then
	echo "The code directory already exists, so cd done"
	cd django-notes-app
fi
if ! install_requirements; then
	echo "Installation Failed"
	exit 1
fi
if ! required_restarts; then
	echo "System Fault Identified"
	exit 1
fi
if ! deploy; then
	echo "Deployment Failed"
fi
echo "*************** Deployment Done *****************"

