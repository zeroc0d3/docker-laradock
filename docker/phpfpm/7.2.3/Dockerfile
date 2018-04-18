ARG PHP_VERSION=7.2.3
ARG ALPINE_VERSION=3.6
FROM php:${PHP_VERSION}-fpm-alpine${ALPINE_VERSION}

# ================================================================================================
#  Inspiration: Docker Framework (https://github.com/zeroc0d3/docker-framework)
#               ZeroC0D3 Engineer <zeroc0d3.0912@gmail.com>
# ================================================================================================
#  Core Contributors:
#  - Mahmoud Zalt @mahmoudz
#  - Bo-Yi Wu @appleboy
#  - Philippe Trépanier @philtrep
#  - Mike Erickson @mikeerickson
#  - Dwi Fahni Denni @zeroc0d3
#  - Thor Erik @thorerik
#  - Winfried van Loon @winfried-van-loon
#  - TJ Miller @sixlive
#  - Yu-Lung Shao (Allen) @bestlong
#  - Milan Urukalo @urukalo
#  - Vince Chu @vwchu
#  - Huadong Zuo @zuohuadong
# ================================================================================================

MAINTAINER "Laradock Team <mahmoud@zalt.me>"

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