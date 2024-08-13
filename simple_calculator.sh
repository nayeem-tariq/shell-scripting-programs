#!/usr/bin/env bash
read -p "Enter num1 " x
read -p "Enter num2 " y
read -p "Select your option (1.Addition,2.subtraction,3.Multiplication,4.Division: )" opt

case $opt in
	1)
		echo "You selected Addition"
		echo "Addition of $x and $y is $(bc <<<"$x+$y")"
		;;
        2)
                echo "You selected subtraction"
                echo "Subtraction of $x and $y is $(bc <<<"$x-$y")"
                ;;
        3)
                echo "You selected Multiplication"
                echo "Multiplication of $x and $y is $(bc <<<"$x*$y")"
                ;;
        4) 
                echo "You selected Division"
                echo "Division of $x and $y is $(bc <<<"$x/$y")"
                ;;
        *)
                echo "You selected a invalid option"
                ;;
esac
