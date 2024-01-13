FROM php:8.0-apache

## MAINTAINER Victor Queiroga (victorqueiroga.com)


ENV DEBUG_MODE="FALSE"
ENV DB_HOST="db"
ENV DB_NAME="screentodb"
ENV DB_USER="screentodbuser"
ENV DB_PASSWORD="screentodbuserpass"

EXPOSE 80

WORKDIR /var/www/html

COPY ./docker/99-overrides.ini /usr/local/etc/php/conf.d
COPY ./docker/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

RUN apt-get update \
    && apt-get install -y libfreetype-dev libjpeg62-turbo-dev libpng-dev unzip wget nano \
	&& curl -sSL https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions -o - | sh -s \
      curl gd mbstring mysqli xdebug gettext \
    && docker-php-ext-enable xdebug 

RUN apt-get -y autoremove \
    && apt-get clean \
    && chown -R www-data:www-data .


ENTRYPOINT ["docker-entrypoint.sh"]