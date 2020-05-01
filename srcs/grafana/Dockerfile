FROM alpine:latest

RUN apk update && apk add --no-cache --upgrade bash \
&& apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main libc6-compat

RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN wget https://dl.grafana.com/oss/release/grafana-6.7.2.linux-amd64.tar.gz \
&& tar -zxvf grafana-6.7.2.linux-amd64.tar.gz
#&& rm /grafana-6.7.2/conf/defaults.ini \
#&& rm -rf /var/cache/apk/*

#COPY ./grafana.ini ./grafana-6.7.2/conf/defaults.ini
COPY ./grafana.db ./grafana-6.7.2/data/
COPY start.sh /start.sh

RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

RUN chmod +x /start.sh

EXPOSE 3000

CMD ./start.sh
