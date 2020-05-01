FROM alpine
ARG IP

# We install packages
RUN apk update
RUN apk add openrc --no-cache
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache
RUN apk add pure-ftpd --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

# We create a new user
RUN { echo "password"; echo "password"; } | adduser user

# We save the minikube IP given at build time
RUN echo ${IP} > ip.txt

# We setup Telegraf config
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

# We setup welcome message
RUN echo 'FTP of ft_services by tmarx' > /hello.txt

# Here we go
COPY ./start.sh /start.sh
CMD sh /start.sh
EXPOSE 21 21000
