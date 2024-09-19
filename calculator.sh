#!/usr/bin/bash

add(){
    read -p "Enter your first number: " first
    read -p "Enter your second number: " second
    sum=$(($first + $second))
}

subtract(){
    read -p "Enter your first number: " first
    read -p "Enter your second number: " second
    difference=$(($first - $second))
}

multiply(){
    read -p "Enter your first number: " first
    read -p "Enter your second number: " second
    product=$(($first * $second))
}

divide(){
    read -p "Enter your first number: " first
    read -p "Enter your second number: " second
    quotient=$(echo "scale=2; $first / $second" | bc)
}

echo "Choose what you want to do with the calculator"
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"

read -p "Enter your choice: " choice
case $choice in
    1) add
    echo "The sum is: $sum"
    ;;
    2) subtract
    echo "The difference is: $difference"
    ;;
    3) multiply
    echo "The product is: $product"
    ;;
    4) divide
    echo "The quotient is: $quotient"
    ;;
    *) echo "Invalid choice"
    ;;
esac
