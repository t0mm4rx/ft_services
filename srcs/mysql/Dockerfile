FROM alpine:latest

RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

# Installation
RUN apk update \
&& apk add mariadb mariadb-client && apk add --no-cache --upgrade bash \
&& rm -rf /var/cache/apk/*

# Copy initialisation script
COPY ./init_docker.sh .
COPY ./init_mysql.sh .
COPY wordpress.sql .

# Add permission
RUN chmod +x init_docker.sh
RUN chmod +x init_mysql.sh

RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY start.sh /start.sh
RUN chmod +x start.sh
EXPOSE 3306
CMD ./init_docker.sh
