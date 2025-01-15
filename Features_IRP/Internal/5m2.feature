﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
Тогда открылось окно "Заказы покупателей"
И я нажимаю на кнопку с именем 'FormCreate'
Тогда открылось окно "Заказ покупателя (создание)"
И я нажимаю кнопку выбора у поля с именем 'Agreement'
Тогда открылось окно "Соглашения"
	Попытка
		И в таблице 'List' я перехожу к строке:
			| "Вид"     | "Вид взаиморасчетов"         | "Код" | "Наименование"                                         |
			| "Обычное" | "По стандартным соглашениям" | "5"   | "Общее соглашение (расчет по стандартным соглашениям)" |
		И в таблице 'List' я выбираю текущую строку
		Тогда открылось окно "Заказ покупателя (создание) *"
		И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'
		Тогда элемент формы с именем 'Company' стал равен "Собственная компания 1"
	Исключение
		И я нажимаю кнопку выбора у поля с именем 'Company'
		Тогда открылось окно "Организации"
		И в таблице 'List' я перехожу к строке:
			| "Код" | "Наименование"           |
			| "2"   | "Собственная компания 2" |
		И в таблице 'List' я выбираю текущую строку
		Тогда открылось окно "Заказ покупателя (создание) *"
		И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'
				
	
				
