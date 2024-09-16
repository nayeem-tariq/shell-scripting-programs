#!/bin/bash

old_IFS=$IFS

while IFS=" " read f1 f2 f3
do 
	echo "$f2"
done < ../test.txt

IFS=$old_IFS
