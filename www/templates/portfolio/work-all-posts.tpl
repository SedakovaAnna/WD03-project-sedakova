<div class="main-wrapper">
	<div class="container container--center">
		<?php
				if ( isset($_GET['result']) ) {
					include ROOT . "templates/portfolio/_results.tpl";;
				}
			?>
			<div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">
				<div class="title-1">Портфолио</div>
				<?php if (isAdmin()) { ?>
				<div class="section-ui">
					<a class="button button--edit" href="<?HOST?>work-new">Добавить работу</a>
				</div>
				<?php } ?>

			</div>
			<div class="row pb-35">
				<?php foreach ($works as $work) {
				include ROOT . "templates/_parts/_work-card.tpl";
			} ?>
			</div>
	</div>
</div>