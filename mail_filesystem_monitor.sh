#!/usr/bin/env bash

Mail_id="example@gmail.com"

echo -e "The Filesystem utilization on $(hostname -s) is : \n $(df -h | grep -Ev "none|snap|tmpfs")" | /usr/bin/mail -s "File Sysyem Utilization" "$Mail_id" 

