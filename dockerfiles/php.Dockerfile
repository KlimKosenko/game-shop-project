FROM php:8.3-fpm-alpine

WORKDIR /var/www/game-shop

RUN docker-php-ext-install pdo pdo_mysql