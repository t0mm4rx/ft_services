FROM alpine

ARG IP

RUN apk update && apk add wget && mkdir /www \
&& apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session

RUN wget https://wordpress.org/latest.tar.gz \
&& tar -xvf latest.tar.gz \
&& mv wordpress/* /www \
&& rm -rf /var/cache/apk/*

RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

COPY wp-config.php /www/wp-config.php
#RUN sed 's/AAAIPAAA/127.0.0.1/g' /www/wp-config.php > /www/wp-config.php
RUN echo $IP > ip.txt

COPY start.sh .

RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

RUN chmod +x start.sh

EXPOSE 5050
CMD ./start.sh
