FROM alpine

# We install packages
RUN apk update
RUN apk add openrc --no-cache
RUN apk add openssh
RUN apk add openssl
RUN apk add nginx
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

# We create user that the web server will use
RUN adduser -D -g 'www' www

# We setup web server files and permissions
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mkdir -p /run/nginx

# Nginx config file and webpage
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www/index.html
COPY script.js /www/script.js

# We create SSH user and SSL key
RUN adduser -D user
RUN echo "user:password"|chpasswd
RUN ssh-keygen -A
RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt

# Telegraf setup
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

# We customize the SSH welcome message
RUN echo 'SSH of ft_services by tmarx' > /etc/motd

# Here we go
COPY start.sh ./start.sh
RUN chmod +x /start.sh
CMD sh ./start.sh
EXPOSE 80
EXPOSE 443
EXPOSE 22
