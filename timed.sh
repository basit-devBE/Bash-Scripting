#!/bin/bash

read -t 5 -p "Enter your username within 5 seconds: " username

if [ -z "$username" ]
then
    echo "You did not enter a username in time"
else
    echo "Hello $username"

fi