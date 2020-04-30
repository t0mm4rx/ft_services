FROM alpine:latest

RUN apk update && apk add influxdb \
&& apk add --no-cache --upgrade bash

COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 8086

CMD ./start.sh
