#!/bin/bash

declare -a arr=("https://googl33e.com.ua" "https://facebook.com" "https://x.com")

log_file="task1.status.log"

for url in "${arr[@]}"
do
   response=$(curl --write-out '%{http_code}' --silent --output /dev/null "$url") 

   if [[ $response -ge 200 && $response -le 399  ]]; then
        echo "<$url> is UP" >> $log_file
        echo "<$url> is UP"
    else
        echo "<$url> is DOWN" >> $log_file
        echo "<$url> is DOWN"
    fi

done