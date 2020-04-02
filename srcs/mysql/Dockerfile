FROM alpine

ARG IP
RUN echo ${IP}
RUN echo ${IP} > ip.txt

RUN apk update
RUN apk add openrc --no-cache
RUN apk add mysql mysql-client

COPY ./start.sh ./start.sh
COPY ./mysql.cnf /etc/mysql/my.cnf

RUN mkdir /app

ENTRYPOINT sh ./start.sh

EXPOSE 3306
