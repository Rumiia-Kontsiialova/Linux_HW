#!/bin/bash

address="google.com"
max_ping_time_ms=100
max_try=3
count=0

        while true; do

                ping_result=$(ping -c 1 "$address")
                ping_time=$(echo "$ping_result" | awk -F'=' '{print $4}')

        if [ -n "$ping_time" ] && [ "$ping_time" -gt "$max_ping_time_ms" ]; then
        echo "Ping $address exceed $max_ping_time_ms ms: $ping_time ."
 fi
        if [ -z "$ping_time" ]; then
        echo "Ping $address failed."
                ((count++))
        else
                echo "Ping $address success: $ping_time ."
                count=0
 fi
        if [ "$count" -ge "$max_count" ]; then
        echo "limit try exceeded."
         count=0
 fi
 sleep 1
 done

