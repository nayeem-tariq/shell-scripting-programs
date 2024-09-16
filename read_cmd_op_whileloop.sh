#!/bin/bash

ls -lt | while read line
do
	echo "$line"
done

echo "--------------------------------------------------\n"

cat ../test.txt | while read each_line
do 
	echo "$each_line"
done
