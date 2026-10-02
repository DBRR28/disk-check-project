#!/bin/bash

usage=$(df / | tail -1 | awk '{print $5}' | tr -d '%')

if [ "$usage" -gt 80 ]; then
    echo "WARNING: Disk usage is over 80%!"
else
    echo "Disk usage is OK at ${usage}%."
fi
