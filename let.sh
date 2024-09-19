#!/usr/bin/bash

read -p "Enter your first number: " first_num
read -p "Enter your second number: " second_num

if [ $first_num -gt $second_num ]; then
    echo "The first number is greater than the second number"
elif [ $first_num -lt $second_num ]; then
    echo "The second number is greater than the first number"
else
    echo "The two numbers are equal"
fi

if [ $second_num -eq 0 ]; then
    echo "Cannot divide by zero"
else
    let result=$first_num/$second_num
    echo "The result is $result"
fi