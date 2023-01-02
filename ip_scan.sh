#!/bin/bash
for i in $(seq 0 255); do
	timeout 1 ping -c 1 10.0.0.$i &>/dev/null && echo "IP: 10.0.0.$i" &
done;wait
