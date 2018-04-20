ARG PHP_VERSION=5.6.34-r0
FROM bhuisgen/alpine-base-consul:latest

# ================================================================================================
#  Inspiration: Docker Alpine (https://github.com/bhuisgen/docker-alpine)
#               Boris HUISGEN <bhuisgen@hbis.fr>
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

RUN mkdir -p /var/www && \
    addgroup -g 82 -S www-data && \
    adduser -u 82 -S -D -g "" -G www-data www-data

ENV PHP_VERSION=${PHP_VERSION}

RUN apk add --update --no-cache \
    ca-certificates \
    tar \
    curl \
    bash && \
    apk add --update php5 \
    php5-bcmath \
    php5-bz2 \
    php5-cli \
    php5-ctype \
    php5-curl \
    php5-fpm \
    php5-gd \
    php5-gettext \
    php5-iconv \
    php5-json \
    php5-mcrypt \
    php5-mysql \
    php5-mysqli \
    php5-opcache \
    php5-openssl \
    php5-pdo \
    php5-pdo_mysql \
    php5-pdo_pgsql \
    php5-pdo_sqlite \
    php5-pgsql \
    php5-sockets \
    php5-sqlite3 \
    php5-xml \
    php5-xmlreader \
    php5-zip \
    php5-zlib && \
    apk del tar && \
    rm -rf /var/cache/apk/*

COPY rootfs/ /

WORKDIR /var/www
ENTRYPOINT ["/init"]
CMD []

EXPOSE 9200 9000 9090 80
VOLUME ["/var/www"]
