# Техническое Задание

## Список сущностей

- Роли
- Логи
- Пользователи
- Книги
- Жанры
- Авторы
- Корзина
- Фото книги
- Отзывы
- Заказы

## Функциональные требования
- Авторизация
- Управление пользователями (CRUD)
- Управления книгами (CRUD)
- Система ролей
- Журналирование действий пользователя
- Отзывы о книгах 

### Система ролей
- Админ (удалять/изменять книги и пользователей (модераторов), менять статус книг + привилегии модератора,удалять отзывы, просмотр логов)
- Модератор (удалять/изменять книги, менять статус книг, удалять отзывы)
- Пользователь (просматривать книги/добавлять книги в корзину/покупать книги, писать отзывы)

## Личный аккаунт

При создании аккаунта пользователь должен указать следующие данные:
- Почту
- Пароль

Авторизация происходит при помощи почты и пароля.