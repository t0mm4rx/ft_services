IP=$(cat /ip.txt)
sed -i "s/AAAIPAAA/$IP/g" /www/wp-config.php
php -S 0.0.0.0:5050 -t /www/
