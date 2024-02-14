<?php echo $header; ?>
<h1>Обновление opencart</h1>
<div id="column-right">
  <ul>
    <li><b>Апгрейд</b></li>
    <li>Окончание</li>
  </ul>
</div>
<div id="content">
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <fieldset>
    <p><b>Осторожно следуйте инструкциям!</b></p>
    <ol>
      <li>Направляйте любые ошибки на наши форумыs</li>
      <li>После обновления удалите куки в ваших браузерах чтобы избежать проблем с сессиями.</li>
      <li>Загрузите страницу административной панель и нажмите Ctrl+F5 дважды чтобы бразур обновил стили сайта.</li>
      <li>Перейдите Панель -> Пользователи -> Группы пользователей и отредактируйте группу Top Adminstrator. Отметьте все чекбоксы.</li>
      <li>Перейдите в основные настройки сайта, обновите все поля и нажмите сохранить, даже если ничего не изменилось.</li>
      <li>Перейдите в интернет-магазин и нажмите Ctrl+F5 дважды чтобы браузер обновил стили сайта.</li>
    </ol>
    </fieldset>
    <div class="buttons">
	  <div class="right">
        <input type="submit" value="Продолжить" class="button" />
      </div>
	</div>
  </form>
</div>
<?php echo $footer; ?> 
