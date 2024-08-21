#!/usr/bin/env bash

if [[ $(id -u) -eq 0 ]] 
then
	if  systemctl status docker  2>/dev/null 1>/dev/null
	then
		echo "The docker is already in running state"
	else
		echo "Starting Docker service"
		systemctl start docker
		echo "Docker service has been started"
	fi
else
	if sudo -v 2>/dev/null 1>/dev/null
       then
        	if  sudo systemctl status docker  2>/dev/null 1>/dev/null
        	then
                	echo "The docker is already in running state"
        	else
                	echo "Starting Docker service"
                	sudo systemctl start docker
                	echo "Docker service has been started"
        	fi
       else

		echo "You should be a root user or have sudo access to run this script"
       fi
fi
