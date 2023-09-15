#!/bin/bash

# essential installation
apt update && apt upgrade -y
apt install curl git -y

# apache2 installation
apt install apache2 -y

# php installation
apt install php libapache2-mod-php php-mbstring php-xmlrpc php-soap php-gd php-xml php-cli php-zip php-bcmath php-tokenizer php-json php-pear php-curl -y

# database/mariadb installation
apt install mariadb-server -y
