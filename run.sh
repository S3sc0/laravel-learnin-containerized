#!/bin/bash

if [ "$1" == "-c" ]; then
	sudo docker build -t laravel .
	sudo docker run -d -it -p8000:8000 --name laravel-cntr laravel

	printf  "\n\nDone creating the container"

elif [ "$1" == "-d" ]; then
	sudo docker stop laravel-cntr 2> /dev/null
	sudo docker rm laravel-cntr 2> /dev/null

	sudo docker image rm -f laravel	2> /dev/null
	echo "Done deleting the container and its dependencies"

else
	echo "Usage: ./run.sh -c or -d options"

fi
