#!/usr/bin/bash

read -p "Enter a number: " num
sqrt=$(echo "scale=2; sqrt($num)" | bc)

power=$(echo "scale=2; $num^2" | bc)

echo "Square root of $num is $sqrt"
echo "The power is: $power"