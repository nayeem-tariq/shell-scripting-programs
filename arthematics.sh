x=4
y=7
((sum=x+y))
echo "The addtion of $x and $y is : $sum"

div_result=$(bc <<<"scale=2;$y/$x")
echo "The division between $y and $x is: $div_result"
