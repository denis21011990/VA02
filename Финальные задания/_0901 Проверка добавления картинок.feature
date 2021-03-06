#language: ru

@tree

Функционал: Проверка добавления картинок в товарах

Как Тестировщик я хочу
заполнить картинку товара
чтобы проверить корректность отображения картинок

Контекст: 
	И Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: _0901 Проверка добавления картинок

* Подготовка
	И я закрываю все окна клиентского приложения
	И _0900 Подготовка данных для проверок
	
* Проверка и заполнение картинки
	Дано Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749"
	И в поле с именем 'ФайлКартинки' я ввожу текст ''
	И элемент формы с именем 'ФайлКартинки' стал равен ''
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Файл (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'Колбаса файл'
	И я выбираю файл "$КаталогПроекта$\Вложения\Колбаса 1.jpg"
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля с именем 'Код' как 'КодФайла'
	И в поле с именем 'Наименование' я ввожу текст 'Колбаса файл ($КодФайла$)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И в таблице "Список" я перехожу к строке:
		| 'Код'        |
		| '$КодФайла$' |
	И в таблице "Список" я выбираю текущую строку

* Запись товара и проверка
	Когда открылось окно 'Колбаса (Товар) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Колбаса (Товар)'
	И Я закрываю окно 'Колбаса (Товар)'
		
	Дано Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749"
	И элемент формы с именем 'ФайлКартинки' стал равен 'Колбаса файл ($КодФайла$)'
	
	
