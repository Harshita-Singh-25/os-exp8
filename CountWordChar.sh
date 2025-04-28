#!/bin/bash

# Check if filename is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found"
    exit 1
fi

# Count lines, words, and characters
lines=$(grep -c '' "$filename")
words=$(grep -oE '\w+' "$filename" | wc -w)
chars=$(grep -o '.' "$filename" | wc -m)

echo "File: $filename"
echo "Lines: $lines"
echo "Words: $words"
echo "Characters: $chars"