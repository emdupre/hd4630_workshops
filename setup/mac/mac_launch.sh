#!/bin/bash

open -a XQuartz ;

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}') ;
xhost + $ip ;

docker run -ti -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
-v $HOME/Desktop/hd4630_workshops-master/data:/home/student/data \
-v $HOME/Desktop/hd4630_workshops-master/code:/home/student/code \
--rm emdupre/hd4630_workshops
