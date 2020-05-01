#!/bin/sh

# We retrieve external IP
IP=$(cat /ip.txt)
# We replace the template IP by the actual kubernetes IP
sed -i "s/AAAIPAAA/$IP/g" /www/wp-config.php
# We launch Telegraf and a simple web server hosting Wordpress
telegraf &
php -S 0.0.0.0:5050 -t /www/
