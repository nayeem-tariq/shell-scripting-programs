#!/usr/bin/env bash

TO="example@gmail.com"

Th_L=10
Free_RAM=$(free -tg | grep -E "Total" | awk '{print $4}')

if [[ $Free_RAM -lt Th_L ]] 
then
	echo -e "Server RAM is low\nAvailable RAM is: $Free_RAM | /usr/bin/mail -s "RAM INFO $(date)"" $TO
fi
