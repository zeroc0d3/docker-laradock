ARG MONGO_VERSION=3.4.14
FROM mongo:${MONGO_VERSION}

MAINTAINER "ZeroC0D3 Engineer <zeroc0d3.0912@gmail.com>"

ENV MONGO_INITDB_ROOT_PASSWORD="password" \
    MONGO_INITDB_ROOT_USERNAME="root" \
    MONGO_INITDB_ROOT_HOST="localhost" \
    MONGO_DATABASE="laradock_mongodb" \
    MONGO_USER="laradock" \
    MONGO_PASSWORD="password"

RUN mkdir -p /data/db /data/configdb \
    && chown -R mongodb:mongodb /data/db /data/configdb

VOLUME /data/db /data/configdb

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod 777 /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 27017
CMD ["mongod"]
