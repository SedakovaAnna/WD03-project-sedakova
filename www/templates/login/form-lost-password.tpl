<form id="lostForm" class="login-page-form" method="POST" action="<?=HOST?>lost-password">
	<div class="login-page-form__header">Забыл пароль</div>

	<?php require ROOT . "templates/_parts/_errors.tpl" ?>
	<?php require ROOT . "templates/_parts/_success.tpl" ?>

	<div class="registration-page-form__row">
		<div class="error hidden">Введите email</div>
	</div>

	<div class="login-page-form__row">
		<input name="email" class="input" type="email" placeholder="E-mail" value="info@mail.com" />
	</div>
	<div class="login-page-form__row text-center">
		
		<div class="login-page-form__col text-center">
			<a class="login-page__links" href="<?=HOST?>login">Перейти на страницу входа</a>
		</div>
	</div>
	<div class="login-page-form__footer">
		<input name="lost-password" type="hidden" value="lost-password" />
		<input type="submit" class="button button--lost" value="Восстановить пароль" >
		<!-- <input class="button button--lost" name="lost-password" type="submit" value="Восстановить пароль" /> -->
	</div>
</form>