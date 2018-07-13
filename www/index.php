<?php 
require "config.php";
require "db.php";

// echo HOST;
// echo ROOT;

// РОУТЕР

// http://project/port/blog/post?id=2
$uri = $_SERVER["REQUEST_URI"]; 

echo $uri; // /port/blog/post?id=2
echo "<br>";

//убираем / в конце
$uri = rtrim($uri, "/");
echo $uri; // /port/blog/post?id=2
echo "<br>";

//обработка запроса с помощью встроенного фильтра FILTER_SANITIZE_URL 
$uri = filter_var($uri, FILTER_SANITIZE_URL);
echo $uri; // /port/blog/post?id=2
echo "<br>";

//убираем / в начале, первый символ
$uri = substr($uri, 1);
echo $uri; // port/blog/post?id=2
echo "<br>";

//разбить строку с разделителем "?", превратив ее в массив. Если отправлен GET запрос.
$uri = explode('?', $uri);
print_r($uri); // массив Array ( [0] => port/blog/post [1] => id=2 )
echo "<br>";
echo "<br>";

//Роутер

switch ($uri[0]) {
	case '':
		// echo "Главная страница";
		include "modules/main/index.php";
		break;
	
	case 'about':
		// echo "О пользователе";
		include "modules/about/index.php";
		break;
	
	case 'contacts':
		// echo "Контакты";
		include "modules/contacts/index.php";
		break;
	
	case 'blog':
		// echo "Блог";
		include "modules/blog/index.php";
		break;
	
	default:
		// echo "404 На главную";
		include "modules/main/index.php";
		break;
}



 ?>