FROM alpine

RUN apk update
RUN apk add openrc --no-cache
RUN apk add openssh
RUN apk add openssl
RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mkdir -p /run/nginx
RUN adduser -D user
RUN echo "user:password"|chpasswd
RUN ssh-keygen -A
RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt

COPY nginx.conf /etc/nginx/nginx.conf
COPY start.sh ./start.sh
COPY index.html /www/index.html

RUN echo 'SSH of ft_services by tmarx' > /etc/motd

CMD sh ./start.sh

EXPOSE 80
EXPOSE 443
EXPOSE 22
