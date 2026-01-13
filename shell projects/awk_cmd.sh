#!/bin/bash

free_space="$(df -h)"
echo process 
echo "$free_space" | grep 'D:' | awk '{print $5}' |cut -d '%' -f1