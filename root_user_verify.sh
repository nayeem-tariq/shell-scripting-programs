#!/usr/bin/env bash

userID=$(id -u)
if [[ $userID -eq 0 ]]
then
	echo "$(id -un) is a root user"
else
	echo "$(id -un) is not a root user"
fi
