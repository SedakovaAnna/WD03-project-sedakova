<div class="project container mb-100 mt-40 pb-20">
			<div class="project__header row mb-45">
				<div class="project__header-info col offset-sm-1">
					<div class="project__title title-1 mt-0 mb-20"><?=$work['work_name']?></div>
					<span class="project__name title-6"><?=$work['name']?> <?=$work['secondname']?></span>
					<span class="project__works title-6">
						<a href="<?=HOST?>portfolio">Работы</a>
					</span>
					<span class="project__date title-6"><?=rus_date("j F Y H:i", strtotime($work['date_time']))?></span>
				</div>
					<?php if (isAdmin()) { ?>
				<div class="col text-right">
					<a class="button button--edit button--small" href="<?=HOST?>work-edit?id=<?=$work['id']?>">Редактировать</a>
					<a class="button button--del button--small" href="<?=HOST?>work-delete?id=<?=$work['id']?>">Удалить</a>
				</div>
				<?php } ?>
			</div>
			<?php if( $work['maket'] != '') {?>
			<div class="col-sm-10 offset-sm-1 pr-0 pl-0">
				<img src="<?=HOST?>usercontent/portfolio/<?=$work['maket']?>" />
			</div>
			<?php } ?>
			<div class="row mt-55">
				<div class="col-sm-6 offset-sm-1">
					<div class="project-info user-content">
						<div class="title-3">Кратко о проекте</div>
						<p><?=$work['description']?></p>

						<?php if ( $work['result'] != '' ) { ?>
						<div class="title-3">Результат</div>
						<p><?=$work['result']?></p>
						<?php } ?>
					</div>
				</div>
				<div class="col-sm-5">
					<div class="techs">
						<?php if ( $work['technology'] != '' ) { ?>
						<div class="project-info user-content">
							<div class="title-3 mt-0 mb-20">Технологии</div>
						
							<p><?=$work['technology']?></p>
						<?php } ?>
						</div>
						<?php if ( $work['link_project'] != '' ) { ?>
						<div class="title-3 mt-0 mb-20">Ссылка на проект</div>
						<p><a href="<?=$work['link_project']?>"><?=$work['link_project']?></a></p>
						<?php } ?>
						<?php if ( $work['link_github'] != '' ) { ?>
						<div class="title-3 mt-0">Код на github</div>
						<p><a href="<?=$work['link_project']?>"><?=$work['link_github']?></a></p>
						<?php } ?>
					</div>
				</div>
			</div>
			<div class="flex-container-button mt-30">
					<div>
						
						<a class="button <?=($nextId == '') ? 'button--none' : ''?>"
							<?php if ($nextId != ''): ?>
								href="<?=HOST?>work?id=<?=$nextId?>"
							<?php endif ?>
							/>
							<i class="fas fa-arrow-left"></i>&nbsp;Назад
						</a>
					</div>

					<div>
						
						<a class="button <?=($prevId == '') ? 'button--none' : ''?>"
							<?php if ($prevId != ''): ?>
								href="<?=HOST?>work?id=<?=$prevId?>"
							<?php endif ?>
							/>
							Вперед&nbsp;<i class="fas fa-arrow-right"></i>
						</a>
					</div>
				</div>	
			</div>