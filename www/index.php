<?php 
require "config.php";
require "db.php";
require ROOT . "libs/functions.php";

session_start();
// echo HOST;
// echo ROOT;

$errors = array(); //массив с ошибками
$success = array();
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

// КАТЕГОРИИ
	case 'blog/categories':
		include "modules/categories/all.php";
		break;

	case 'blog/category-new':
		include "modules/categories/new.php";
		break;

	case 'blog/category-edit':
		include "modules/categories/edit.php";
		break;


	case 'blog/category-delete':
		include "modules/categories/delete.php";
		break;

// БЛОГ
	case 'blog':
		include ROOT . "modules/blog/index.php";
		break;

	case 'blog/post-new':
		include ROOT . "modules/blog/post-new.php";
		break;

	case 'blog/post':
		include ROOT . "modules/blog/post.php";
		break;

	case 'blog/post-edit':
		include ROOT . "modules/blog/post-edit.php";
		break;

	case 'blog/post-delete':
		include ROOT . "modules/blog/post-delete.php";
		break;
	
//КОНТАКТЫ
	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'contacts-edit':
		include "modules/contacts/edit.php";
		break;

	case 'messages':
		include "modules/contacts/messages.php";
		break;

//ОБО МНЕ
	case 'about':
		include "modules/about/index.php";
		break;

	case 'edit-text':
		include "modules/about/edit-text.php";
		break;

	case 'edit-skills':
		include "modules/about/edit-skills.php";
		break;

	case 'edit-jobs':
		include "modules/about/edit-jobs.php";
		break;

//ПОРТФОЛИО
	case 'portfolio':
		include ROOT . "modules/portfolio/index.php";
		break;
	case 'work-new':
		include ROOT . "modules/portfolio/work-new.php";
		break;
	case 'work':
		include ROOT . "modules/portfolio/work.php";
		break;
	case 'work-edit':
		include ROOT . "modules/portfolio/work-edit.php";
		break;
	case 'work-delete':
		include ROOT . "modules/portfolio/work-delete.php";
		break;

//404
	default:
		echo "Главная страница / 404";
		break;
}



 ?>