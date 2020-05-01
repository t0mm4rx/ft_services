#!/bin/sh
/usr/sbin/sshd
telegraf &
nginx -g 'daemon off;'
