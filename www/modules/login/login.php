<?php 

$title = "Вход на сайт";

if ( isset($_POST['login'])) {

	if ( trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите Email' ];
	}

	if ( trim($_POST['password']) == '') {
		$errors[] = ['title' => 'Введите пароль' ];
	}

	if ( empty($errors)) {
		//вход, если есть логин в таблице
		$user = R::findOne('users', 'email = ?', array($_POST['email']) );

		if ( $user ) {
			//проверка пароля
			if ( password_verify( $_POST['password'], $user->password ) ) {
				$_SESSION['logged_user'] = $user;
				$_SESSION['login'] = "1";
				$_SESSION['role'] = $user->role;
				header("Location: " . HOST); //на главную
				exit();
			} else {
				$errors[] = ['title' => 'Неверный пароль' ];
			}
		}

	}
}


// контент для центральной части
ob_start();
include ROOT . "templates/login/form-login.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>