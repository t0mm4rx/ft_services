FROM alpine

COPY install.sh install.sh
COPY start.sh start.sh

RUN sh install.sh 

#COPY srcs/telegraf.conf /etc/telegraf.conf
COPY my.cnf /etc/mysql/my.cnf

#VOLUME ["/var/lib/mysql"]

EXPOSE 3306

ENTRYPOINT sh start.sh
