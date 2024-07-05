#!/bin/bash

# Memeriksa apakah tiga parameter diberikan
if [ $# -ne 3 ]; then
    echo "Usage: $0 <public_key_file> <username> <server_ip>"
    exit 1
fi

PUBLIC_KEY_FILE=$1
USERNAME=$2
SERVER_IP=$3

# Menyalin kunci publik ke server remote
ssh-copy-id -i "$PUBLIC_KEY_FILE" "$USERNAME@$SERVER_IP"

echo "Public key copied to $USERNAME@$SERVER_IP"
