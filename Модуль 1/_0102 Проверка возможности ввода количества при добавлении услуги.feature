﻿#language: ru

@tree

Функционал: Проверка возможности ввода количества при добавлении услуги

Как Тестировщик я хочу
добавить услугу строке табличной части
чтобы проверить возможность выбора количества

Контекст:
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0102 Проверка расчета суммы документа Заказ

* Открытие формы заказа
	И Я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я перехожу к строке:
		| 'Номер'     |
		| '000000062' |
	И в таблице "Список" я выбираю текущую строку

* Добавление услуги
	Когда открылось окно 'Заказ * от * *'
	И в таблице "Товары" я нажимаю на кнопку 'Добавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита "Товар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000036' | 'Услуги'       |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заказ * от * *'
	И в таблице "Товары" я завершаю редактирование строки
		
* Проверка возможности изменить количество
	Когда открылось окно 'Заказ * от * *'
	И в таблице "Товары" я активизирую поле "Количество"
	И в таблице "Товары" я выбираю текущую строку
	Когда Проверяю шаги на Исключение:
	|'И в таблице "Товары" в поле с именем "ТоварыКоличество" я ввожу текст "1"'|

* Возврат к прошлым состояниям через Перечитать и закрыть
	Когда открылось окно 'Заказ * от * *'
	И я нажимаю на кнопку 'Перечитать'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Да'