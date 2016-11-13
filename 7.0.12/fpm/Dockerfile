FROM php:7.0-fpm

RUN export TERM=xterm
RUN echo 'alias ll="ls -la"' >> ~/.bashrc

ENV DB_HOST=null DB_PORT=null DB_USER=null DB_PASSWORD=null DB_NAME=null

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt-get update && apt-get install -y libicu-dev libxml2-dev git unzip npm
RUN npm install apidoc -g
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN pecl install intl && docker-php-ext-install intl \
    && docker-php-ext-install pdo_mysql mbstring

RUN yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_connect_back=On" >> /usr/local/etc/php/conf.d/xdebug.ini

ADD ./php.ini /usr/local/etc/php/

WORKDIR /var/www/api/