#!/usr/bin/env bash

read -p "Enter the option: start,stop or restart: " opt

if [[ $opt == start ]]
then
	echo "Starting docker"
	sudo systemctl start docker
elif [[ $opt == stop ]]
then
	echo "Stopping docker"
	sudo systemctl stop docker
elif [[ $opt == restart ]]
then
	echo "Restarting docker"
	sudo systemctl restart docker
else
	echo "You've selected an invalid option"
fi
