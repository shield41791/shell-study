#!/bin/bash

read -p "Enter the first number : " num1
read -p "Enter the second number : " num2
read -p "Enter the third number : " num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ];then
echo ${num1} "is the largest number"
elif [ $num2 -gt $num3 ];then
echo ${num2} "is the largest number"
else
echo ${num3} "is the largest number"
fi
