#!/bin/bash

addition () {
 m=$1
 n=$2
 result=$((m+n))
 echo "The addition of $m and $n is: $result"
}

x=6
y=2
addition $x $y

p=3
q=4
addition $p $q
