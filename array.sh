#!/bin/bash

numbers=(2 4 6 7 10)
sum=0
for num in "${numbers[@]}"; do
    sum=$((sum + num))
done

echo "The sum of the numbers is: $sum"