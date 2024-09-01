#!/usr/bin/env bash

#for i in test1.sh test2.sh

if [[ $# -ne 1 ]]
then
	echo "Usage: $0 <any_path>"
	exit
fi

path=$1
for i in $(ls $path)
do
	if [[ -x $i ]]
        then
		echo "$i is having execution permission"
	else
		echo "$i is not having execution permission"
	fi
done
