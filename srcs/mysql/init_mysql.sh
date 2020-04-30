#! /bin/bash

# Wait that mysql was up
until mysql
do
	echo "NO_UP"
done

# Init DB
echo "CREATE DATABASE wordpress;" | mysql -u root --skip-password
echo "CREATE USER 'user'@'%' IDENTIFIED BY 'password';" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'user'@'%' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "update mysql.user set plugin='mysql_native_password' where user='root';" | mysql -u root --skip-password
echo "DROP DATABASE test" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
mysql wordpress -u root --password=  < wp.sql
