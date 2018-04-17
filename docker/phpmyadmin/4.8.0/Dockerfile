ARG ALPINE_VERSION=3.6
ARG PHPMYADMIN_VERSION=4.8.0
FROM alpine:${ALPINE_VERSION}

MAINTAINER "ZeroC0D3 Engineer <zeroc0d3.0912@gmail.com>"

ENV PHPMYADMIN_VERSION=${PHPMYADMIN_VERSION}

ENV PMA_ARBITRARY="1" \
    PMA_HOST="localhost" \
    PMA_PORT="3306" \
    PMA_USER="laradock" \
    PMA_PASSWORD="password"

RUN apk add --update curl tar zip unzip && \
    mkdir /var/www && \
    # curl -sSL https://files.phpmyadmin.net/phpMyAdmin/${PHPMYADMIN_VERSION}/phpMyAdmin-${PHPMYADMIN_VERSION}-english.tar.gz | \
    #    tar -xzo -C /var/www --strip-components 1 && \
    curl -o /var/www -sSL https://files.phpmyadmin.net/phpMyAdmin/${PHPMYADMIN_VERSION}/phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages.zip | \
       cd /var/www && unzip phpMyAdmin-${PHPMYADMIN_VERSION}-all-languages.zip && \
    apk del curl tar && \
    rm -rf /var/cache/apk/*

# We expose PhpMyAdmin on port 80 (PhpMyAdmin's default)
EXPOSE 8080

ENTRYPOINT ["/bin/sh"]
CMD []
VOLUME ["/var/www", "/sessions"]

