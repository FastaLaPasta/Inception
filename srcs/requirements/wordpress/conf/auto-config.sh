#!/bin/bash

#IF LE FICHIER N'existe PAS A RAJOUTER

sleep 20;
cd /var/www/wordpress
wp config create	--allow-root \
    --dbname=$SQL_DATABASE \
    --dbuser=$SQL_USER \
    --dbpass=$SQL_PASSWORD \
    --dbhost=mariadb:3306 --path='/var/www/wordpress'
wp core install     --allow-root \
    --url='sboulogn.42.fr' \
    --title='Inception' \
    --admin_user=$SQL_USER \
    --admin_password=$SQL_PASSWORD \
    --admin_email='sashaboulogne@gmail.com'
wp user create --allow-root leBgQuiMeCorrige lebg@gmail.com --porcelain\

mkdir -p /run/php
/usr/sbin/php-fpm7.3 -F
