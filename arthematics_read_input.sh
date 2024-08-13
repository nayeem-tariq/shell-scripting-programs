#!/usr/bin/env bash
read -p "Enter the first number:" x
read -p "Enter the second number:" y
result=$(bc <<<"$x+$y")
echo "Sum of $x and $y is $result"
