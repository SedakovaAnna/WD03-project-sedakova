<?php 
require "config.php";
require "db.php";
require ROOT . "libs/functions.php";

session_start();
// echo HOST;
// echo ROOT;

$errors = array(); //массив с ошибками

// РОУТЕР

// http://project/port/blog/post?id=2
$uri = $_SERVER["REQUEST_URI"]; 
//убираем / в конце
$uri = rtrim($uri, "/");
//обработка запроса с помощью встроенного фильтра FILTER_SANITIZE_URL 
$uri = filter_var($uri, FILTER_SANITIZE_URL);
//убираем / в начале, первый символ
$uri = substr($uri, 1);
//разбить строку с разделителем "?", превратив ее в массив. Если отправлен GET запрос.
$uri = explode('?', $uri);

//Роутер

switch ($uri[0]) {
	case '':
		//главная
		include "modules/main/index.php";
		break;
	
// ::::::::::::::::::: USERS :::::::::::::::::::

		//страница входа
	case 'login':
		require ROOT . "modules/login/login.php";
		break;
		//страница регистрации
	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;
		//страница выхода
	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;
		//страница восстановления пароля
	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;
		//страница задания нового пароля
	case 'set-new-password':
		include ROOT . "modules/login/set-new-password.php";
		break;
		//страница о пользователе
	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;
		//редактирование информации о пользователе
	case 'profile-edit':
		include ROOT . "modules/profile/edit.php";
		break;

	case 'blog':
		echo "Блог";
		echo "<br>";
		echo "$uri[1]";
		break;
	
	default:
		echo "Главная страница / 404";
		break;
}



 ?>