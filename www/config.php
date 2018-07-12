<?php 

/**
* Устанавливает путь до корневой директории скрипта
* по протоколу HTTP
*/
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

/**
* Устанавливает физический путь до корневой директории скрипта
*/
define('ROOT', dirname(__FILE__).'/');

/**
* Устанавливает настройки соединения с базой данных
*/
define('MYSQL_SERVER', 'localhost');
define('MYSQL_USER', 'root');
define('MYSQL_PASSWORD', '');
define('MYSQL_DB', 'WD03-project-sedakova');


?>