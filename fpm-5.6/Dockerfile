FROM php:5.6-fpm
MAINTAINER borin jgrekov@gmail.com

RUN apt-get update && apt-get install -y \
 libfreetype6-dev \
 libjpeg62-turbo-dev \
 libmcrypt-dev \
 libpng-dev \
 && docker-php-ext-install -j$(nproc) iconv mcrypt \
 && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
 && docker-php-ext-install -j$(nproc) gd

RUN echo "deb http://deb.debian.org/debian jessie non-free" >> /etc/apt/sources.list && \
 apt-get update && apt-get install -y \
 libicu-dev \
 libpq-dev \
 libsnmp-dev \
 snmp-mibs-downloader \
 libxml2-dev \
 && docker-php-ext-install -j$(nproc) intl mysqli pdo_mysql pdo_pgsql snmp soap sockets zip

ENV TZ=Etc/UTC
RUN echo "[Date]\ndate.timezone = \${TZ}" > /usr/local/etc/php/conf.d/timezone.ini

RUN mkdir -p /opt/userside && \
 chown -R www-data:www-data /opt/userside && \
 php -r "copy('http://my.userside.eu/install', '/opt/userside/userside_install.phar');"

WORKDIR "/opt/userside"
