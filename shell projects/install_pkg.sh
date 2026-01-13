#!/usr/bin/bash

if command -v $1; then
    echo "$1 is already installed."
else
    echo "$1 is not installed. Would you like to install it? (y/n)"
    read -r answer
    if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
        sudo apt update
        sudo apt install -y $1
    else
        echo "wget installation skipped."
    fi
fi
