FROM php:7.4-fpm-alpine

LABEL maintainer="gfx@karpiak.pl"

RUN apk --update add --no-cache \
    bash \
    git \
    unzip \
    nano \
    && docker-php-ext-install opcache

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo

RUN export TERM=xterm \
    && echo "alias ll='ls -la'" >> ~/.bashrc
