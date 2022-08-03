#!/usr/bin/env bash
## Script demonstrates basic arithmetic in bash
## Written by Dalitso Sakala <contact@dalitsosakala.com> 



# prepare formating
on=`tput setaf 32`
off=`tput sgr0`
line=`printf "=%.0s\n" {1..10}`
clear

# Addition
echo -e "enter value of a & b $on a+b$off and$on a-b$off\nEnter a"
read a
echo "Enter b"
read b
let c=a+b
let d=a-b
echo -e "result of$on $a+$b $off is $c\nresult of$on $a-$b $off is $d"

echo $line

# Multiplication
echo -e "enter value for a in$on a*b$off\nEnter a"
read a
echo 'Enter b'
read b
((c=a*b))
echo "result for$on $a+$b $off is $c"

echo $line

# Division
echo -e "enter value of a & b in$on a/b$off\nEnter a"
read a
echo 'Enter b'
read b
# print with precision to 3 decimal places
printf "%.3f\n" $((10**3*a/b))e-3
