#!/bin/bash
# Kill process via dmenu search

process=$(ps -e -o comm | sort -u | dmenu -i -p "kill:")

if [ -n "$process" ]; then
    pkill "$process"
fi
