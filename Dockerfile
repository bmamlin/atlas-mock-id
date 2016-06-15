FROM php:5.6-apache

RUN apt-get -qq update && apt-get install -y \
	libmcrypt-dev && \
	docker-php-ext-install mcrypt

COPY . /var/www/html