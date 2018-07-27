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
define('DB_SERVER', 'localhost');
define('DB_NAME', 'WD03-project-sedakova');
define('DB_USER', 'root');
define('DB_PASSWORD', '');


?>