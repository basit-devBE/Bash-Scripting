#!/usr/bin/bash

num1=5.5
num2=2.5

result=$(echo "scale=2; $num1 / $num2" | bc)

echo "The division result is: $result"