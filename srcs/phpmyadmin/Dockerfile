FROM alpine

ARG IP

RUN apk update && apk upgrade && apk add bash \
&& apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session

RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz \
&& tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz \
&& mv phpMyAdmin-4.9.0.1-all-languages /www \
&& rm -rf /var/cache/apk/*

RUN echo $IP > ip.txt

COPY phpmyadmin.inc.php /www/config.inc.php
COPY start.sh .

RUN chmod +x start.sh

EXPOSE 5000

CMD ./start.sh
