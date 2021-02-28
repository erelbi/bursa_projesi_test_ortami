#!/bin/bash
docker ps -a  |  grep container | awk '{print$2}' | while read -r line
do
 
 #docker  stop "$line"  | echo "$line durduruldu" && docker rm "$line" | echo "$line silindi"
 docker rm -f "$line" | echo "$line silindi"
done 
