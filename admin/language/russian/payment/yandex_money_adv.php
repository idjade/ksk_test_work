<?php
// Heading
$_['heading_title'] = 'Яндекс.Деньги ADV v0.0.1';

// Text 
$_['text_payment'] = 'Оплаты';
$_['text_yandex_money_adv'] = '<a onclick="window.open(\'https://money.yandex.ru\');"><img src="view/image/payment/yandex_money_adv.gif" alt="Яндекс.Деньги" title="Яндекс.Деньги" style="border: 1px solid #EEEEEE;" /></a>';

// Entry
$_['entry_wallet'] = 'Номер кошелька Яндекс.Деньги:';
$_['entry_secret'] = 'Секрет:';
$_['entry_commission'] = 'Комиссия платежной системы (%):';
$_['entry_telephone'] = 'Телефон:<span class="help">если поле оставить пустым, то телефон берется из настроек магазина</span>';
$_['entry_order_status'] = 'Статус заказа после оплаты:';
$_['entry_geo_zone'] = 'Географическая Зона:';
$_['entry_status'] = 'Статус:';
$_['entry_sort_order'] = 'Порядок сортировки:';

$_['entry_settings_payment'] = '<b>Настройки модуля оплаты</b>';
$_['entry_settings_informer'] = '<b>Настройки информера</b> [<a href="https://sp-money.yandex.ru/myservices/online.xml" target="_blank">ссылка</a>]';
$_['entry_settings_application'] = '<b>Настройки приложения</b> [<a href="https://sp-money.yandex.ru/myservices/new.xml" target="_blank">ссылка</a>]';

$_['entry_redirect_uri'] = 'Redirect Uri:<span class="help">указывается в настройках Яндекс.Деньги</span>';
$_['entry_informer_uri'] = 'Uri для информирования о платежах:<span class="help">указывается в настройках Яндекс.Деньги</span>';
$_['entry_application_id'] = 'Идентификатор приложения:';
$_['entry_application_oauth2'] = 'OAuth2:';
$_['entry_application_status'] = 'Статус приложения:';
$_['entry_token_success'] = '<b style="color:green;">Токен авторизации получен</b>&nbsp;&nbsp;&nbsp;';
$_['entry_token_error'] = '<b style="color:red;">Токен авторизации не получен</b>';

$_['entry_direction'] = 'Тип:<span class="help">in - входящий, out - исходящий</span>';
$_['entry_amount'] = 'Сумма:';
$_['entry_operation_id'] = 'Номер (идентефикатор):';
$_['entry_pattern_id'] = 'Шаблон:<span class="help">p2p - перевод между пользователями</span>';
$_['entry_datetime'] = 'Дата:';
$_['entry_title'] = 'Название:';

// Button
$_['button_test'] = 'Тест';

// Error
$_['error_permission'] = 'У Вас нет прав для управления модулем Яндекс.Деньги ADV!';
$_['error_empty_wallet'] = 'Введите номер кошелька!';
$_['error_number_wallet'] = 'Кошелек должен содержать только цифры!';
$_['error_access_token'] = 'Неверно заданы параметры. Доступ к сервису Яндекс.Деньги невозможен!';
$_['error_empty_payments'] = 'Нет платежей!';
$_['error_access'] = 'Произошла ошибка доступа!';

// Success
$_['success_edit_settings'] = 'Настройки модуля Яндекс.Деньги ADV успешно изменены!';
$_['success_access_token'] = 'Доступ к сервису Яндекс.Деньги успешно получен!';
?>