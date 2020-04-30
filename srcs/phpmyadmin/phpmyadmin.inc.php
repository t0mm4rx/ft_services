<?php

$cfg['blowfish_secret'] = '';

/**
 * List of env variables
 */
$vars = array(
    'PMA_HOST',
	'PMA_PORT',
	'PMA_USER',
	'MYSQL_ROOT_PASSWORD'
);

/**
 * Stock env variables in tab
 */
foreach ($vars as $var) {
    $env = getenv($var);
    if (!isset($_ENV[$var]) && $env !== false) {
        $_ENV[$var] = $env;
    }
}

/**
 * Only one server
 */
$i = 1;

/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';
/* Server parameters */
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = true;

/**
 * Variable definition
 */
$cfg['Servers'][$i]['host'] = "mysql-service";
$cfg['Servers'][$i]['port'] = "3306";
$cfg['Servers'][$i]['user'] = "user";
$cfg['Servers'][$i]['password'] = "password";

$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
