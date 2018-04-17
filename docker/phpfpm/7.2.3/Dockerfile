ARG PHP_VERSION=7.2.3
ARG ALPINE_VERSION=3.6
FROM php:${PHP_VERSION}-fpm-alpine${ALPINE_VERSION}

MAINTAINER "ZeroC0D3 Engineer <zeroc0d3.0912@gmail.com>"

ENV PHP_VERSION=${PHP_VERSION} \
    ALPINE_VERSION=${ALPINE_VERSION} \
    XDEBUG_VERSION=2.6.0

# Install xdebug
COPY ./docker-php-pecl-install /usr/local/bin/
RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-${XDEBUG_VERSION} \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install iconv \
    && docker-php-ext-install mcrypt \
    && docker-php-ext-install intl \
    && docker-php-ext-install opcache \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install curl \
    && docker-php-ext-install zip

RUN mkdir -p /var/log/php-fpm \
    && touch /var/log/php-fpm/fpm-error.log \
    && chmod 777 /var/log/php-fpm/fpm-error.log

ENTRYPOINT ["docker-php-entrypoint"]
WORKDIR /var/www

EXPOSE 9200 9000 9090 80
CMD ["php-fpm"]
VOLUME ["/var/www"]