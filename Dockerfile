FROM php:7.2-cli-alpine

RUN apk add --no-cache \
	zlib-dev unzip	

RUN docker-php-ext-install opcache pdo pdo_mysql zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && chmod +x /usr/local/bin/composer

RUN echo 'date.timezone = "Europe/Copenhagen"\n', > /usr/local/etc/php/conf.d/tzone.ini
