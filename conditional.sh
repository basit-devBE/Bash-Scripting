#!/bin/bash
 
read -p "Enter the number you want to check" num

if ((num > 0)); then
    echo "The number is positive"
elif ((num < 0)); then
    echo "The number is negative"
else
    echo "The number is zero"
fi 

if ((num % 2==0));then
    echo "The number is even"
else
    echo "The number is odd"
fi