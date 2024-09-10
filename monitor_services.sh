#!/usr/bin/env bash

myServices=(nginx docker)

for each_ser in ${myServices[@]}
do
	systemctl status $each_ser 1>/dev/null 2>/dev/null
	if [[ $? -ne 0 ]]
	then
		echo "The $each_ser is not running"
		echo "The $each_ser is not running on $(hostname -s)" | usr/bin/mail -s "Status of $each_ser" "example@gmail.com"
	fi
done
