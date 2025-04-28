#!/bin/bash

# Check for correct number of arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <filename> <old_word> <new_word>"
    exit 1
fi

filename=$1
old_word=$2
new_word=$3

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found"
    exit 1
fi

# Create backup and perform replacement
sed -i.bak "s/\b$old_word\b/$new_word/g" "$filename"

echo "Replaced all occurrences of '$old_word' with '$new_word' in '$filename'"
echo "Original file backed up as '$filename.bak'"