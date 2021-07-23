#!/bin/bash
docker exec -it rpi_mysql mysql -e "source /etc/mysql/$1" -u root -p
