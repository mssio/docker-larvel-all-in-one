FROM php:7.0.16-fpm-alpine
MAINTAINER Mario Suharja <mario@mss.io>

# Install dependencies
# Mcrypt, gd, xml, zip Dependencies
RUN apk --update add --no-cache libmcrypt-dev libjpeg-turbo-dev libpng-dev libxml2-dev zlib-dev
# PHP extension
RUN docker-php-ext-install pdo_mysql bcmath json mcrypt gd xml zip

# Setup xdebug
RUN apk --update add --no-cache --virtual build-xdebug autoconf gcc g++ make \
  && pecl install xdebug-2.4.1 \
  && apk del build-xdebug
# Enable xdebug
COPY config/local/docker/fpm/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Fix upload max size
COPY config/local/docker/fpm/php.ini /usr/local/etc/php/

# Set volume
VOLUME /usr/share/nginx/html

WORKDIR /usr/share/nginx/html