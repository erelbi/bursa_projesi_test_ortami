#!/bin/bash

for  ((i = 1; i <= $@; i++ )); do 

container=$(docker ps -a | grep container$i | awk '{print$2}')
    if  [ "$container" == "container$i" ]; then
        docker start $container | echo "$container start edildi"
    else
        docker build . -t container$i  | echo " container$i  oluşturuldu" && docker run -dit --name  container$i container$i | echo " container$i başlatıldı" ;
    fi
done

