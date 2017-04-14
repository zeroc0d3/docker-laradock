FROM php:7.0-alpine

MAINTAINER Laradock

STOPSIGNAL SIGINT

RUN	addgroup -S adminer \
&&	adduser -S -G adminer adminer \
&&	mkdir -p /var/www/html

WORKDIR /var/www/html

RUN	apk add --no-cache libpq

RUN	set -x \
&&	apk add --no-cache --virtual .build-deps \
	postgresql-dev \
	sqlite-dev \
&&	docker-php-ext-install pdo_mysql pdo_pgsql pdo_sqlite \
&&	apk del .build-deps

ENV	ADMINER_VERSION 4.3.1
ENV	ADMINER_DOWNLOAD_SHA256 c26f48bc06c195928dee9ca5d5a485d86a8b14d420368061fd8045ac26fcc701

RUN	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o index.php \
&&	echo "$ADMINER_DOWNLOAD_SHA256  index.php" |sha256sum -c -

USER	adminer
CMD	[ "php", "-S", "0.0.0.0:8080", "-t", "/var/www/html" ]

# Add volume for sessions to allow session persistence
VOLUME /sessions

# We expose Adminer on port 8080 (Adminer's default)
EXPOSE 8080
