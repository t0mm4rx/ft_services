IP=$(cat ip.txt)
sed -i "s/---IP---/$IP/g" /www/config.inc.php
php -S 0.0.0.0:5000 -t /www/
