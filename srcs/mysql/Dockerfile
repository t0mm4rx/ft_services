  # FROM Image : alpine
FROM alpine:latest

# VOLUME /var/run/docker.sock:/var/run/docker.sock

RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

# Installation
RUN apk update \
&& apk add mariadb mariadb-client && apk add --no-cache --upgrade bash \
&& rm -rf /var/cache/apk/*

# Copy initialisation script
COPY ./init_docker.sh .
COPY ./init_mysql.sh .
COPY wp.sql .

# Add permission
RUN chmod 777 init_docker.sh
RUN chmod 777 init_mysql.sh

RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

EXPOSE 3306

# Start configuration script
ENTRYPOINT [ "./init_docker.sh" ]
