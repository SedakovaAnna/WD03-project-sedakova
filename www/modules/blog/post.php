<?php 

// $title = "Блог";

//посты из БД
// $post = R::findOne('posts', 'id = ?', array($_GET['id']) );
$sql = 'SELECT posts.id, posts.title, posts.text, posts.post_img, posts.date_time, posts.author_id, posts.cat,
   			users.name, users.secondname, 
    		categories.cat_title
		FROM `posts` 
		INNER JOIN `categories` ON posts.cat = categories.id
		INNER JOIN `users` ON posts.author_id = users.id 
		WHERE posts.id = ' . $_GET['id'] . ' LIMIT 1';

$post = R::getAll( $sql );//выпонить запрос
$post = $post[0];//внутренний массив

$title = $post['title'];


// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/blog-post.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>