FROM php:8.1-fpm
RUN docker-php-ext-install pdo_mysql && pecl install xdebug && docker-php-ext-enable xdebug
COPY ./php-custom.ini /usr/local/etc/php/conf.d/php-custom.ini

EXPOSE 9000
CMD ["php-fpm"]