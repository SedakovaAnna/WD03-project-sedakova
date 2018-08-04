<div class="container mt-70 mb-120">
	<div class="row justify-content-center">
		<div class="col-md-10">
			<div class="blog-full-post">

				<?php if ( isAdmin() ) {  ?>
				<div class="blog-full-post__button-edit">
					<a class="button button--edit" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">Редактировать</a>
					<a class="button button--del" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>">Удалить</a>
				</div>
				<?php } ?>

				<?php if ( isAdmin() ) {
				$additionalHeaderClass = 'mr-350';
			} ?>

			<h1 class="blog__heading <?=@$additionalHeaderClass?>"><?=$post['title']?></h1>

			<div class="blog__info-wrap">
				<span class="blog__name">
					<?=$post['name']?>
					<?=$post['secondname']?>
				</span>
				<span class="blog__travel">
					<a href="#">
						<?=$post['cat_title']?>
					</a>
				</span>
				<span class="blog__date">
					<?php echo rus_date("j F Y H:i", strtotime($post['date_time'])); ?>
				</span>
				<span class="blog__comments">
					<a href="#comments"><?php commentNumber( count($comments) );?></a>
				</span></div>

				<?php if ( $post['post_img'] != "") { ?>
				<div class="blog__image">
					<img src="<?=HOST?>usercontent/blog/<?=$post['post_img']?>" alt="<?=$post['title']?>" />
				</div>
				<?php } ?>
				<div class="user-content">
					<p>
						<?=$post['text']?>						
					</p>
				</div>
				<div class="flex-container-button mt-30">
					<div>
						
						<a class="button <?=($nextId == '') ? 'button--none' : ''?>"
							<?php if ($nextId != ''): ?>
								href="<?=HOST?>blog/post?id=<?=$nextId?>"
							<?php endif ?>
							/>
							<i class="fas fa-arrow-left"></i>&nbsp;Назад
						</a>
					</div>

					<div>
						
						<a class="button <?=($prevId == '') ? 'button--none' : ''?>"
							<?php if ($prevId != ''): ?>
								href="<?=HOST?>blog/post?id=<?=$prevId?>"
							<?php endif ?>
							/>
							Вперед&nbsp;<i class="fas fa-arrow-right"></i>
						</a>
					</div>
				</div>
				
				<!-- вывод комментариев	 -->
				<?php if ( count($comments) > 0) { ?>
				<h3 class="user-comment-header" id="comments"><?php commentNumber( count($comments) );?></h3>
				<?php foreach ($comments as $comment) {  
				include ROOT . "templates/blog/_comment-card.tpl";
			} ?>
			<?php } ?>

			<!-- Добавление комментария -->

			<?php include ROOT . "templates/blog/_add-comment-form.tpl"  ?>

		</div>
	</div>
</div>
</div>