<?php echo $header; ?>
<h1>Шаг 2 Требования</h1>
<div id="column-right">
  <ul>
      <li>Лицензия</li>
      <li><b>Требования</b></li>
      <li>Конфигурация</li>
      <li>Окончание</li>
  </ul>
</div>
<div id="content">
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
      <p>1. Пожалуйста сконфигурируйте PHP, чтобы настройки совпадали с представленными ниже.</p>
    <fieldset>
      <table>
        <tr>
            <th width="35%" align="left"><b>PHP настройки</b></th>
            <th width="25%" align="left"><b>Текущие настройки</b></th>
            <th width="25%" align="left"><b>Необходимые настройки</b></th>
            <th width="15%" align="center"><b>Статус</b></th>
        </tr>
        <tr>
            <td>PHP Версия:</td>
          <td><?php echo phpversion(); ?></td>
          <td>5.0+</td>
          <td align="center"><?php echo (phpversion() >= '5.0') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
            <td>Использование глобальных переменных:</td>

          <td><?php echo (ini_get('register_globals')) ? 'On' : 'Off'; ?></td>
          <td>Off</td>
          <td align="center"><?php echo (!ini_get('register_globals')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
            <td>Использование Magic Quotes GPC:</td>
          <td><?php echo (ini_get('magic_quotes_gpc')) ? 'On' : 'Off'; ?></td>
          <td>Off</td>
          <td align="center"><?php echo (!ini_get('magic_quotes_gpc')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
            <td>Загрузка файлов:</td>
          <td><?php echo (ini_get('file_uploads')) ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo (ini_get('file_uploads')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
            <td>Авто-старт сессий:</td>
          <td><?php echo (ini_get('session_auto_start')) ? 'On' : 'Off'; ?></td>
          <td>Off</td>
          <td align="center"><?php echo (!ini_get('session_auto_start')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
      </table>
    </fieldset>
      <p>2. Пожалуйста убедитесь, что нижеследующие расширения установлены.</p>
    <fieldset>
      <table>
        <tr>
            <th width="35%" align="left"><b>Расширение</b></th>
            <th width="25%" align="left"><b>Текущие настройки</b></th>
            <th width="25%" align="left"><b>Требуемые настройки</b></th>
            <th width="15%" align="center"><b>Статус</b></th>
        </tr>
        <tr>
          <td>MySQL:</td>
          <td><?php echo extension_loaded('mysql') ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo extension_loaded('mysql') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>GD:</td>
          <td><?php echo extension_loaded('gd') ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo extension_loaded('gd') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>cURL:</td>
          <td><?php echo extension_loaded('curl') ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo extension_loaded('curl') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>mCrypt:</td>
          <td><?php echo function_exists('mcrypt_encrypt') ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo function_exists('mcrypt_encrypt') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>ZIP:</td>
          <td><?php echo extension_loaded('zlib') ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo extension_loaded('zlib') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
      </table>
    </fieldset>
      <p>3. Пожалуйста убедитесь, что у вас правильные права на нижеследующие файлы.</p>
    <fieldset>
      <table>
        <tr>
            <th align="left"><b>Файлы</b></th>
            <th width="15%" align="left"><b>Статус</b></th>
        </tr>
        <tr>
          <td><?php echo $config_catalog; ?></td>
          <td><?php if (!file_exists($config_catalog)) { ?>
            <span class="bad">Отсутствует</span>
            <?php } elseif (!is_writable($config_catalog)) { ?>
            <span class="bad">Нет прав</span>
          <?php } else { ?>
          <span class="good">Есть права</span>
          <?php } ?>
            </td>
        </tr>
        <tr>
          <td><?php echo $config_admin; ?></td>
          <td><?php if (!file_exists($config_admin)) { ?>
            <span class="bad">Отсутствует</span>
            <?php } elseif (!is_writable($config_admin)) { ?>
            <span class="bad">Нет прав</span>
          <?php } else { ?>
          <span class="good">Есть права</span>
          <?php } ?>
             </td>
        </tr>
      </table>
    </fieldset>
      <p>4. Пожалуйста убедитесь, что у вас правильные права на нижеследующие директории.</p>
    <fieldset>
      <table>
        <tr>
            <th align="left"><b>Файлы</b></th>
            <th width="15%" align="left"><b>Статус</b></th>
        </tr>
        <tr>
          <td><?php echo $cache . '/'; ?></td>
          <td><?php echo is_writable($cache) ? '<span class="good">Есть права</span>' : '<span class="bad">Нет прав</span>'; ?></td>
        </tr>
        <tr>
          <td><?php echo $logs . '/'; ?></td>
          <td><?php echo is_writable($logs) ? '<span class="good">Есть права</span>' : '<span class="bad">Нет прав</span>'; ?></td>
        </tr>
        <tr>
          <td><?php echo $image . '/'; ?></td>
          <td><?php echo is_writable($image) ? '<span class="good">Есть права</span>' : '<span class="bad">Нет прав</span>'; ?></td>
        </tr>
        <tr>
          <td><?php echo $image_cache . '/'; ?></td>
          <td><?php echo is_writable($image_cache) ? '<span class="good">Есть права</span>' : '<span class="bad">Нет прав</span>'; ?></td>
        </tr>
        <tr>
          <td><?php echo $image_data . '/'; ?></td>
          <td><?php echo is_writable($image_data) ? '<span class="good">Есть права</span>' : '<span class="bad">Нет прав</span>'; ?></td>
        </tr>
        <tr>
          <td><?php echo $download . '/'; ?></td>
          <td><?php echo is_writable($download) ? '<span class="good">Есть права</span>' : '<span class="bad">Нет прав</span>'; ?></td>
        </tr>
      </table>
    </fieldset>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button">Назад</a></div>
      <div class="right">
        <input type="submit" value="Продолжить" class="button" />
      </div>
    </div>
  </form>
</div>
<?php echo $footer; ?>
