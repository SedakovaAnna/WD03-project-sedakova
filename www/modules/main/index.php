<?php 

echo "Главный модуль и главная страница";

$title = "Главная";
$content = "Содержание главной";

//готовим контент для главной страницы
ob_start();//буферизированный вывод
include ROOT . "templates/main/main.tpl";
$content = ob_get_contents();//сохранить в переменную всё что вывело в буфер обмена
ob_end_clean();//закончить вывод

//подключение шаблонов с путем от корневой папки сайта
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";

 ?>