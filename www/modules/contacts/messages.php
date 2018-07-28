<?php 

$title = "Контакты";

$messages = R::find('messages', 'ORDER BY id DESC');

//удаление сообщения
$message = R::load('messages', @$_GET['trash']);

if( $_GET['trash'] != '' ) {
	$msgImgFolderLocation = ROOT . 'usercontent/upload_files/';
	$msgImg = $message->message_file;
	if ( $msgImg != '' ) {
		$picurl = $msgImgFolderLocation . $msgImg;
		if ( file_exists($picurl) ) {
			unlink($picurl);
		}
	}
	R::trash($message);
	header('Location: ' . HOST . 'messages');
	exit();
}

//контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/messages.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>