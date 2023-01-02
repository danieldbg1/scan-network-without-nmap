#!/bin/bash
for PORT in {1..65535}; do
	(echo >/dev/tcp/IP/$PORT) &>/dev/null && echo "Port $PORT is open" &
done;wait
