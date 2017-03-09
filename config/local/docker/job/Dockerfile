FROM php:7.0.16-alpine
MAINTAINER Mario Suharja <mario@mss.io>

# Install dependencies
# Mcrypt, gd, xml, zip Dependencies
RUN apk --update add --no-cache libmcrypt-dev libjpeg-turbo-dev libpng-dev libxml2-dev zlib-dev
# PHP extension
RUN docker-php-ext-install pdo_mysql bcmath json mcrypt gd xml zip

# Set volume
VOLUME /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

CMD ["php", "artisan", "queue:work", "--sleep=3", "--tries=3", "--daemon"]