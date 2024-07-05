#!/bin/bash

# Menetapkan ambang batas untuk penggunaan disk
THRESHOLD=80

# Memeriksa penggunaan disk
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Jika penggunaan di atas ambang batas, kirim notifikasi
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    # Ganti perintah berikut dengan metode notifikasi pilihan (contoh kali ini : email)
    echo "Disk usage is above $THRESHOLD%. Current usage: $USAGE%" | mail -s "Disk Usage Alert" your-email@example.com
fi
