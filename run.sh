#!/bin/bash

if [ "$1" == "-c" ]; then
	docker build -t laravel ./srcs
	docker run -d -it -v $(pwd)/srcs/autolearn:/root/autolearn -p8000:8000 --name laravel-cntr laravel

elif [ "$1" == "-d" ]; then
	docker stop laravel-cntr > /dev/null
	docker rm laravel-cntr > /dev/null

	docker image rm -f laravel	> /dev/null

else
	printf "Usage:\t./run.sh [OPTIONS]

	-c for creating the container.
	-d for deleting the container and its dependencies.\n"

fi
