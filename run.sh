#!/bin/bash
while true; do sleep 1 
hostname=$(hostname)
ip=$(hostname -I | awk '{print $1}')
curl -d '{"hostname": "'$hostname'","ip":"'$ip'"}' -H "Content-Type: application/json" http://172.17.0.1:3000/clients
done
