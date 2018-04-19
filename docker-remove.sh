#!/usr/bin/env sh

#####  WARNING !!!  ###########################
# YOU HAVE ALREADY KNOW  WHAT ARE YOU DOING ! #
# ------------------------------------------- #
# This will remove all your docker container  #
# without mercy !                             #

##### Remove all docker "laradock" #####
sudo docker ps -a | grep "laradock" | awk '{print $2}' | xargs sudo docker rmi -f

##### Remove all docker offline #####
# sudo docker system prune -a