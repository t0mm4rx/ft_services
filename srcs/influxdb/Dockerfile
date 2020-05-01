FROM alpine:latest

RUN apk update && apk add influxdb \
&& apk add --no-cache --upgrade bash

RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

COPY start.sh /start.sh

RUN chmod +x /start.sh

RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

EXPOSE 8086

CMD ./start.sh
