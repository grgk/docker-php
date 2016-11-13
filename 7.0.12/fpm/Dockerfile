FROM php:7.0-fpm

RUN export TERM=xterm
RUN echo 'alias ll="ls -la"' >> ~/.bashrc

RUN apt-get update && apt-get install -y libicu-dev libxml2-dev git unzip
RUN pecl install intl && docker-php-ext-install intl pdo_mysql mbstring bcmath
