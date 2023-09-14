#!/bin/bash

service apache2 start
service mariadb start

FILE=/etc/mysql/mysql_configured

# execute certain commands once
if test -f "$FILE"; then
	echo "$FILE exists"
else
	printf "\nn\ny\n0000\n0000\ny\nn\ny\ny" | mysql_secure_installation
	touch $FILE
	
	# composer installation
	curl -sS https://getcomposer.org/installer | php
	mv composer.phar /usr/local/bin/composer

	composer create-project --prefer-dist laravel/laravel autolearn
fi

cd ./autolearn && php artisan serve --host=0.0.0.0 --port=8000

tail -f /dev/null
