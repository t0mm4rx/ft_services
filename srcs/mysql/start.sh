#!/bin/sh

mysql_install_db --user=user
tmp=sql_tmp

echo -ne "FLUSH PRIVILEGES;\n
GRANT ALL PRIVILEGES ON *.* TO 'user'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;\n
FLUSH PRIVILEGES;\n" >> $tmp 

/usr/bin/mysqld --user=user --bootstrap --verbose=0 < $tmp
rm -rf $tmp

exec /usr/bin/mysqld --user=user
