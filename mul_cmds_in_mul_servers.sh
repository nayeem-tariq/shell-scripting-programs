#!/usr/bin/env bash

for each_ser in $(cat remote_servers)
do
	for each_cmd in date uptime "free -g"
	do
		echo "The $each_cmd o/p on the server $aech_ser"
		ssh -o StrickHostKeyChecking=No UserName@$each_ser "$each_cmd"
	done
done
