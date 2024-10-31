﻿#language: ru

@tree

Функционал: <тест на проверку расчета суммы документа Заказ >

Как <Роль> я хочу
<описание функционала> 
чтобы <Работало>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <practice1>
*Создание заказа
И В командном интерфейсе я выбираю "Продажи" "Заказ"
Тогда открылось окно "Заказ (создание)"
И я нажимаю на кнопку открытия поля с именем 'Организация'
И я нажимаю на кнопку открытия поля с именем 'Организация'
И из выпадающего списка с именем 'Организация' я выбираю по строке "ОО"
И я перехожу к следующему реквизиту
И из выпадающего списка с именем 'Покупатель' я выбираю по строке "М"
И я перехожу к следующему реквизиту
И из выпадающего списка с именем 'Склад' я выбираю по строке "С"
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И я нажимаю на кнопку с именем 'ФормаСписок'
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ (создание) *"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "5"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "3 200,00"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000031" | "Босоножки"    |
И в таблице 'Список' я выбираю текущую строку
*Смена цены и количества
И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "1 700,00"
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "2"
И в таблице 'Товары' я завершаю редактирование строки
*Проверка расчета суммы
И таблица "Товары" содержит строки:
	| "Сумма"    |
	| "16 000,00"|
	| "3 400,00" |
