#!/bin/sh

# We run Telegraf and the Grafana web dashboard
telegraf &
cd ./grafana-6.7.2/bin/ && ./grafana-server
