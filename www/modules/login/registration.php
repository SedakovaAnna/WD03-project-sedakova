<?php 

$title = "Регистрация";

//если форма отправлена - делаем регистрацию
if ( isset($_POST['register'])) {

	if ( trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите Email', 'desc' => '<p>Email обязателен для регистрации на сайте</p>' ];
	}

	if ( trim($_POST['password']) == '') {
		$errors[] = ['title' => 'Введите пароль' ];
	}

	// Проверка что пользователь уже существует
	if ( R::count('users', 'email = ?', array($_POST['email']) ) > 0 ) {
		$errors[]  = [ 
						'title' => 'Пользователь с там email уже зарегистрирован', 
						'desc' => '<p>Используйте другой email, чтобы создать новый аккаунт. Или воспользуйтесь <a class="error-with-desc__link" href="#">восстановлением пароля</a>, чтобы войти на сайт.</p>',
					];
	}

	if ( empty($errors) ) {
		$user = R::dispense('users');
		$user->email = htmlentities($_POST['email']); //пользователь
		$user->role = 'user'; //права
		$user->password = password_hash($_POST['password'], PASSWORD_DEFAULT); //пароль
		R::store($user); //сохраняем

		//переменные сессии
		$_SESSION['logged_user'] = $user;
		$_SESSION['login'] = "1";
		$_SESSION['role'] = $user->role;

		header('Location: ' . HOST . "profile-edit"); //на страницу редактирования профиля
		exit();

	}

}


// Буферизация контента для центральной части
ob_start();
include ROOT . "templates/login/form-registration.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>