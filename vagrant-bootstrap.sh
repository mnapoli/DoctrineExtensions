#!/bin/bash

# For PHP 5.4
apt-get install -y python-software-properties
add-apt-repository -y ppa:ondrej/php5
apt-get update

apt-get install -y curl make

# SCM
apt-get install -y git

# PHP
apt-get install -y php5 php5-cli php5-dev php5-mysql php5-sqlite php-pear

# PHPUnit
pear config-set auto_discover 1
pear install pear.phpunit.de/PHPUnit

# Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# MongoDB
apt-get install -y mongodb
pecl install -f mongo-1.3.7
echo "extension=mongo.so" >> /etc/php5/cli/php.ini
