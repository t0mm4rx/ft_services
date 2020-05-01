#!/bin/sh

# We start the SSH deamon, Telegraf and nginx
/usr/sbin/sshd
telegraf &
nginx -g 'daemon off;'
