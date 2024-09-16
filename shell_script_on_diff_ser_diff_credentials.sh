#!/usr/bin/env bash

while read ser user pass cmd
do
	sshpass -p $pass ssh -n -O StrickHostKeyChecking=No $user@$ser "$cmd"

done < servers_info.txt
