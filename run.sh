#!/bin/bash

if [ "$1" == "-c" ]; then
	sudo docker build -t laravel ./srcs
	sudo docker run -d -it -v $(pwd)/srcs/autolearn:/root/autolearn -p8000:8000 --name laravel-cntr laravel

elif [ "$1" == "-d" ]; then
	sudo docker stop laravel-cntr > /dev/null
	sudo docker rm laravel-cntr > /dev/null

	sudo docker image rm -f laravel	> /dev/null

else
	printf "Usage:\t./run.sh [OPTIONS]

	-c for creating the container.
	-d for deleting the container and its dependencies.\n"

fi
