<?php 

// $title = "Блог";

//посты из БД
// $post = R::findOne('posts', 'id = ?', array($_GET['id']) );
$sqlPost = 'SELECT posts.id, posts.title, posts.text, posts.post_img, posts.date_time, posts.author_id, posts.cat,
   			users.name, users.secondname, 
    		categories.cat_title
		FROM `posts` 
		INNER JOIN `categories` ON posts.cat = categories.id
		INNER JOIN `users` ON posts.author_id = users.id 
		WHERE posts.id = ' . $_GET['id'] . ' LIMIT 1';

$post = R::getAll( $sqlPost );//выпонить запрос
$post = $post[0];//внутренний массив


$sqlComments = 'SELECT 
			comments.text, comments.date_time, comments.user_id,
			users.name, users.secondname, users.avatar_small
		FROM comments
		INNER JOIN users ON comments.user_id = users.id
		WHERE comments.post_id = ' . $_GET['id'] ;

$comments = R::getAll( $sqlComments );//все комментарии для поста


$title = $post['title'];

if ( isset($_POST['addComment']) ) {
	if ( trim($_POST['commentText']) == '') {
		$errors[] = ['title' => 'Введите текст комментария' ];
	}

	if ( empty($errors)) {
		//запись в БД комментария
		$comment = R::dispense('comments');
		$comment->postId = htmlentities($_GET['id']);
		$comment->userId = htmlentities($_SESSION['logged_user']['id']);
		$comment->text = htmlentities($_POST['commentText']);
		$comment->dateTime = R::isoDateTime();
		R::store($comment);
		$comments = R::getAll( $sqlComments );//получить заново комментарии
	}
}

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