#!/bin/bash
docker ps  |  grep container | awk '{print$2}' | while read -r line
do
 
 docker stop "$line" | echo "$line stop edildi"
 
done 

