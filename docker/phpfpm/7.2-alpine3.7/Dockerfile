ARG PHP_VERSION=7.2.5
ARG ALPINE_VERSION=3.7
FROM php:${PHP_VERSION}-fpm-alpine${ALPINE_VERSION}

# ================================================================================================
#  Inspiration: Docker Framework (https://github.com/zeroc0d3/docker-framework)
#               Dwi Fahni Denni <zeroc0d3.0912@gmail.com>
# ================================================================================================
#  Core Contributors:
#   - Mahmoud Zalt @mahmoudz
#   - Bo-Yi Wu @appleboy
#   - Philippe Trépanier @philtrep
#   - Mike Erickson @mikeerickson
#   - Dwi Fahni Denni @zeroc0d3
#   - Thor Erik @thorerik
#   - Winfried van Loon @winfried-van-loon
#   - TJ Miller @sixlive
#   - Yu-Lung Shao (Allen) @bestlong
#   - Milan Urukalo @urukalo
#   - Vince Chu @vwchu
#   - Huadong Zuo @zuohuadong
# ================================================================================================

MAINTAINER "Laradock Team <mahmoud@zalt.me>"

ENV PHP_VERSION=7.2.5 \
    ALPINE_VERSION=3.7 \
    XDEBUG_VERSION=2.6.0

COPY ./docker-php-pecl-install /usr/local/bin/
RUN apk add --no-cache $PHPIZE_DEPS \
                       libmcrypt-dev \
            		   libltdl \
            		   zlib \
            		   icu-dev \
            		   g++ \
            		   gettext \
            		   curl-dev \
            		   openssl-dev \
            		   libcurl \
    && pecl install xdebug-${XDEBUG_VERSION}


COPY docker-php-source /usr/local/bin/
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/
RUN docker-php-ext-enable opcache

RUN mkdir -p /var/log/php-fpm \
    && mkdir -p /var/www/html \
    && touch /var/log/php-fpm/fpm-error.log \
    && chmod 777 /var/log/php-fpm/fpm-error.log

COPY rootfs /

ENTRYPOINT ["docker-php-entrypoint"]
WORKDIR /var/www/html

EXPOSE 9200 9000 9090 80
CMD ["php-fpm"]

VOLUME ["/var/www/html"]