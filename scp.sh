#!/usr/bin/bash

read -p "Enter the ip of your public instance:" ip

echo "Give us the path to ssh key pair"
read -r key_path

pem_file=$(find "$key_path" -type f -name "*.pem" | head -n 1)
if [ -z "$pem_file" ]; then
    echo "No pem file found in the specified directory"
    exit 1
fi

echo "Do you want to download or send a file to the server?"
echo "Enter 'download' or 'send'"
read -r choice

if [ "$choice" == "download" ]; then
    echo "Enter the path of the file you want to download"
    read -r file_path
    scp -i "$pem_file" "ubuntu@$ip:$file_path" .
elif [ "$choice" == "send" ]; then
    echo "Enter the path of the file you want to send"
    read -r file_path
    scp -i "$pem_file" "$file_path" "ubuntu@$ip:~"
else
    echo "Invalid choice"
    exit 1
fi

