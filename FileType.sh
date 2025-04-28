#!/bin/bash

# Check if pattern is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file_pattern>"
    echo "Example: $0 '\.(txt|pdf|jpg)$'"
    exit 1
fi

pattern=$1

# List files matching the pattern
echo "Files matching pattern '$pattern':"
ls -l | egrep "$pattern"