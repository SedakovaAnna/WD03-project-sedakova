<div class="container mt-50">
	<?php if ( isAdmin() ) { ?>
		<div class="flex-wrap-button">
			<div class="mr-20">
				<a class="button button--edit" href="<?=HOST?>contacts-edit"> Редактировать</a>
			</div>
			<a class="button" href="<?=HOST?>messages">Сообщения</a>
		</div>
	<?php }  ?>

	<div class="row mb-80">
		<div class="col-md-10">
			<div class="row justify-content-between">
				<div class="col-md-6">
					<h2 class="title-2 extrabold">Контакты</h2>

					<?php 
						//показать контакты
					function showContactItem($name, $title){
						global $contacts;
						if ( @$contacts[$name] != "") {  ?>

						<div class="row contact-item">
							<div class="col"><strong><?=$title?></strong></div>
							<div class="col">
								<?php if ( $name == 'email'){ ?>
									<a 	class="contacts-block-info__item-link" target="_blank" 
										href="mailto:<?=$contacts[$name]?>">
										<?=$contacts[$name]?>
									</a>
								<?php } else if ( $name == 'phone' ) { ?>
									<a 	class="contacts-block-info__item-link" target="_blank" 
										href="tel:<?=$contacts[$name]?>">
										<?=$contacts[$name]?>
									</a>
								<?php } else if ( $name == 'skype' ) { ?>
									<a 	class="contacts-block-info__item-link" target="_blank"  
										href="skype:<?=$contacts[$name]?>?chat">
										<?=$contacts[$name]?>
									</a>
								<?php } else if ( $name == 'github' ) { ?>
									<a 	class="contacts-block-info__item-link" target="_blank"  
										href="<?=$contacts[$name]?>">
										<?=$contacts[$name]?>
									</a>
								<?php } else { ?>
									<?=$contacts[$name]?>
								<?php } ?>
								
							</div>
						</div>

						<?php } 
					} ?>

					<?php showContactItem('name', 'Имя'); ?>
					<?php showContactItem('secondname', 'Фамилия'); ?>
					<?php showContactItem('email', 'Email'); ?>
					<?php showContactItem('skype', 'Skype'); ?>
					<?php showContactItem('github', 'Github'); ?>

					<?php if ( @$contacts['vk'] != "" || @$contacts['fb'] != "" || @$contacts['twitter'] != "" ): ?>
						<div class="row contact-item">
							<div class="col"><strong>Социальные сети</strong></div>
							<div class="col">

								<?php if ( @$contacts['vk'] != "") {  ?>
									<a class="contact-social-link" 
										href="<?=$contacts['vk']?>">Профиль Вконтакте</a>
								<?php } ?>

								<?php if ( @$contacts['fb'] != "") {  ?>
									<a class="contact-social-link" 
										href="<?=$contacts['fb']?>">Профиль Facebook</a>
								<?php } ?>

								<?php if ( @$contacts['twitter'] != "") {  ?>
									<a class="contact-social-link" 
										href="<?=$contacts['twitter']?>">Профиль Twitter</a>
								<?php } ?>
								
							</div>
						</div>
					<?php endif ?>


					<?php showContactItem('phone', 'Телефон'); ?>
					<?php showContactItem('address', 'Адрес'); ?>



				</div>
				<div class="col-md-5">
					<h2 class="title-2 extrabold">Связаться со мной</h2>
					<!-- ошибки -->
					<?php include( ROOT . 'templates/_parts/_errors.tpl') ?>
					<?php include( ROOT . 'templates/_parts/_success.tpl') ?>

					<form class="form" action="<?=HOST?>contacts" method="POST" enctype="multipart/form-data">
						<input name="name" class="input mb-10" placeholder="Введите имя" />
						<input name="email" class="input mb-10" placeholder="Email" />
						<textarea name="message" class="textarea" rows="5" placeholder="Сообщение"></textarea>
						<div class="fieldset__title mt-20">Прикрепить файл</div>
						<div class="comment-row">jpg, png, pdf, doc, весом до 2Мб.</div>
						<div class="control-row mb-20">
							<div class="file">
								<label class="file__label">
									<input class="file__input" type="file" name="file" />
									<span class="file__inner-label file__inner-label--large-radius">Выбрать файл</span>
								</label>
								<span class="file__inner-caption">Файлы не выбран</span>
							</div>
						</div>
						<input type="submit" name="newMessage" value="Отправить" class="button button--save">
						<!-- <a class="button button--save" href="#">Отправить</a> -->
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="map" id="map"><iframe src="https://yandex.ru/map-widget/v1/-/CBuWvWdexA" width="100%" height="500" frameborder="1" allowfullscreen="true"></iframe></div>
