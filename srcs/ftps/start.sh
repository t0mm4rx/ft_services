#!/bin/sh
cat ip.txt
telegraf &
pure-ftpd -p 21000:21000 -P $(cat ip.txt)
