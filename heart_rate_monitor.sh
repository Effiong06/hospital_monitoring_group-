#!/bin/bash

generate_heart_rate() {
	        echo $(( RANDOM % 61 + 40 ))
	}

	read -p "Enter device name (e.g., Monitor_A): " device_name

	log_file="heart_rate_log.txt"

	log_heart_rate() {
		    while true; do
			            timestamp=$(date +"%Y-%m-%d %H:%M:%S")
				            heart_rate=$(generate_heart_rate)
					            echo "$timestamp $device_name $heart_rate" >> "$log_file"
						            sleep 1
							        done
							}

							log_heart_rate &

							pid=$!

							echo "Heart rate monitoring started with PID: $pid"
