#!/usr/bin/env bash
#Instaling mutiple packages useing for loop

if [[ $# -eq 0 ]]
then
	echo "Usage: $0 pkg1 pkg2 ...."
	exit 1
fi

if [[ $(id -u) -ne 0 ]]
then
	echo "Needs to be root user or should have sudo previlage"
	exit 1
fi

for pac in $@
do
	if which $pac &> /dev/null
	then
		echo "The Package $pac is alredy installed"
	else
		echo "Installing the package $pac"
		sudo apt install $pac -y &> /dev/null
	if [[ $? -eq 0 ]]
	then
		echo "Package $pac is installed successfully"
	else
		echo "Unable to install the package $pac"
	fi
	fi
done
