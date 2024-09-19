#!/bin/bash

echo "Enter your IP address: "

read -r ip

echo "Enter the path to your ssh key"

read -r key_path
pem_file=$(find "$key_path" -type f -name "*.pem" | head -n 1)
if [ -z "$pem_file" ]; then
    echo "No pem file found in the specified directory"
    exit 1
fi
echo "enter the name of your ssh instance: "
read -r instance_name

# shellcheck disable=SC2029
ssh -i "$pem_file" "$instance_name@$ip"
