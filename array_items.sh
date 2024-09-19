#!/bin/bash

echo "Enter some items (space-spearated): "
read -a items
for item in "${items[@]}"; do
    echo "Item: $item"
done