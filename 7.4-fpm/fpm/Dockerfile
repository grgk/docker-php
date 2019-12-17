FROM php:7.4-fpm

LABEL maintainer="gfx@karpiak.pl"

RUN apt-get update && apt-get install -y --no-install-recommends \
        git \
        unzip \
        nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && docker-php-ext-install opcache

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo

RUN export TERM=xterm \
    && echo 'alias ll="ls -la"' >> ~/.bashrc
