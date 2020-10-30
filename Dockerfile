FROM php:7.3-cli

RUN set -eux; \
    apt-get update; \
    apt-get install -y libzip-dev libmagickwand-dev; \
    pecl install imagick; \
    docker-php-ext-install pdo pdo_mysql zip; \
    docker-php-ext-enable imagick;
