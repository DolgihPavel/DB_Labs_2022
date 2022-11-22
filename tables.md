# Описание сущностей (таблиц)
## users (Пользователи)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| email | VARCHAR(50) | not null | почта пользователя |
| password | VARCHAR(255) | not null | пароль пользователя |
| role_id | fk(INT) | not null | роль |

## roles (Роли пользователей)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| name | VARCHAR(100) | not null | название роли |


## logs (Логи)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| user_id | fk(INT) | not null | пользователь |
| message | VARCHAR(300) | not tull | сообщение |


## books (Книги)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| name | VARCHAR(150) | not null | название книги |
| price | INT | not null | цена книги |
| description | VARCHAR(500) | not null | описание книги |
| pages | INT | not null | количество страниц |
| year_of_publishing | INT | not null | год издания |
| isnb | INT(13) | not null | международный стандартный книжный номер |
| genre_id | fk(INT) | not null | категория книги |
| amount | INT | not null | количество оставшихся книг |
| status | VARCHAR(100) | not null; default(in stock) | статус |


## genres (Жанры книг)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| name | VARCHAR(100) | not null | название жанра |


## carts (Корзина)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| user_id | fk(INT) | not null; unique | пользователь |


## book_images (Фото книг)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| book_id | fk(INT) | not null | книга |
| url | VARCHAR(300) | not null | путь к фото |


## reviews (Отзывы на книги)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| book_id | fk(INT) | not null | книга |
| user_id | fk(INT) | not null | пользователь |
| review | VARCHAR(300) | not null | отзыв |


## authors (Авторы)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| name | VARCHAR(150) | not null | ФИО автора |
| date_of_birth | date | not null | дата рождения |
| biography | VARCHAR(500) | not null | биография автора |


## authors & books (Авторы и книги)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| author_id | fk(INT) | not null | автор |
| book_id | fk(INT) | not null | книга |


## books & carts (Книги и корзины)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| book_id | fk(INT) | not null | книга |
| cart_id | fk(INT) | not null | корзина |
| added_date | date | not null | дата добавления |


## orders (Заказы)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| user_id | fk(INT) | not null | пользователь |
| price | INT | not null | цена |
| creation_date | date | not null | дата создания заказа |


## books & orders (Книги и заказы)
|имя поля | тип | ограничения | описание |
|:---:|:---:|:---:|:---:|
| id | pk(INT) | auto increment; not null; unique | первичный ключ |
| order_id | fk(INT) | not null | заказ |
| book_id | fk(INT) | not null | книга |


Связи многие ко многим для которых были созданы промежуточные таблицы:

 1.У автора может быть много книг, у книг может быть несколько авторов  
 2.В корзине может быть несколько книг, книги могут лежать в разных корзинах
 3.В заказе может быть несколько книг, книги могут быть в разных заказах