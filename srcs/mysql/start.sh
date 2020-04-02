#!/bin/sh

if [ ! -d /app/mysql/mysql ]
then
	echo Creating initial database...
	mysql_install_db --user=root > /dev/null
	echo Done!
fi

if [ ! -d /run/mysqld ]
then
	mkdir -p /run/mysqld
fi

tfile=`mktemp`
if [ ! -f "$tfile" ]
then
	echo Cannot create temp file!
	exit 1
fi

echo Root password is password

cat << EOF > $tfile
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY "password" WITH GRANT OPTION;
EOF

echo Bootstraping...
if ! /usr/bin/mysqld --user=root --bootstrap --verbose=0 < $tfile
then
	echo Cannot bootstrap mysql!
	exit 1
fi
rm -f $tfile
echo Bootstraping done!

echo Launching mysql server!
exec /usr/bin/mysqld --user=root --console
