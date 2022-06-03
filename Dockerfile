FROM php:8.1-fpm
RUN docker-php-ext-install pdo_mysql && pecl install xdebug && docker-php-ext-enable xdebug
COPY ./xdebug-conf.ini /usr/local/etc/php/conf.d/xdebug-conf.ini
