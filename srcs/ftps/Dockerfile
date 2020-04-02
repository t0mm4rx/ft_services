FROM alpine

ARG IP

RUN echo ${IP} 

RUN apk update
RUN apk add openrc --no-cache

RUN apk add pure-ftpd --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

RUN { echo "password"; echo "password"; } | adduser user

RUN echo ${IP} > ip.txt

COPY ./start.sh /start.sh
CMD sh /start.sh

EXPOSE 21 21000
