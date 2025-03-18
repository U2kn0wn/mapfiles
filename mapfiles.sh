#! /bin/bash

while read -r url; do
	curl -L -v -o /dev/null -s -w "%{http_code}\n" $url.map 2>&1 | grep "HTTP/" | grep -v "using" | grep -v "GET" 
	echo "____________________________________________________________"
	done < $1
