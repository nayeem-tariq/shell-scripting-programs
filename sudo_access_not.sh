#!/usr/bin/env bash

if [[ $(sudo -v) -eq 0 ]]
then
	echo "$(whoami) has sudo access"
else
	echo "$(whoami) has no sudo access"
fi
