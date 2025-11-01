#!/bin/bash

#get inputs from the user
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter chosen operator (+, -, *, /): " opp

if [[ "$opp" == "+" ]]; then
    sum=$(($num1 + $num2))

elif [[ "$opp" == "-" ]]; then
    sum=$(($num1 - $num2))

elif [[ "$opp" == "*" ]]; then
    sum=$(($num1 * $num2))

elif [[ "$opp" == "/" ]]; then
    # Prevent division by zero
    if [[ "$num2" -eq 0 ]]; then
        echo "Error connot divide by zero"
        exit 1
    fi
    sum=$(($num1 / $num2))

else 
    #error handling for if the user inputs an invalid operator
    echo "Error invalid operator"
    exit 1
fi

echo "The final answer is $sum"

