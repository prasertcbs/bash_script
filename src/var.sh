#!/usr/bin/env bash

# integer
# cat=7
# echo $cat

# not support decimal
# a=1.5
# a="1.5"
# echo $a
# echo $((a*2))

a=15
b=7
c=$((a + b))
echo $c
echo "$a + $b = $c"
echo "$a + $b = $((a+b))"
echo "$a - $b = $((a-b))"
echo "$a * $b = $((a*b))"
echo "$a / $b = $((a/b))"
echo "$a % $b = $((a%b))"
echo "${a} ** ${b} = $((a**b))"

# string
s="Iron Man"
echo "${s}"

fname="Tony"
lname="Stark"
echo $fname $lname
echo "I'm $fname $lname."
echo "I'm ${fname} ${lname}." # prefer
full_name="${fname} ${lname}"
echo "full_name = ${full_name}"
echo "full_name = ${full_name^^}" # upper
echo "full_name = ${full_name,,}" # lower
echo "full_name = ${full_name~~}" # switch case

# slicing
flower="sunflower"
echo ${flower}
echo ${flower:0:3}
echo ${flower::3}
echo ${flower:3}
echo ${flower: -6}
echo ${flower:3:4}
