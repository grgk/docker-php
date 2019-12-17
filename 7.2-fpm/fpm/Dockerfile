FROM php:7.2-fpm

LABEL maintainer="gfx@karpiak.pl"

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    nano \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
&& docker-php-ext-install opcache

RUN export TERM=xterm
RUN echo 'alias ll="ls -la"' >> ~/.bashrc
