#!/bin/sh

# We launch Telegraf and InfluxDB database
telegraf &
influxd run -config /etc/influxdb.conf
