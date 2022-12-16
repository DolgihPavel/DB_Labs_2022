USE books_store;
GO
CREATE TRIGGER rewiew_INSERT
ON reviews
AFTER INSERT
AS
INSERT INTO logs(user_id,message)
SELECT user_id, 'Добавлен отзыв о книге '+(SELECT name from books WHERE book_id=books.id)
FROM INSERTED

GO

CREATE TRIGGER rewiew_DELETE
ON reviews
AFTER DELETE
AS
INSERT INTO logs(user_id,message)
SELECT user_id, 'Удален отзыв о книге '+(SELECT name from books WHERE book_id=books.id)
FROM DELETED

GO

CREATE TRIGGER order_INSERT
ON orders
AFTER INSERT
AS
INSERT INTO logs(user_id,message)
SELECT user_id, 'Добавлен заказ пользователем '+(SELECT email from users WHERE user_id=users.id)
FROM INSERTED

GO

CREATE TRIGGER order_DELETE
ON orders
AFTER DELETE
AS
INSERT INTO logs(user_id,message)
SELECT user_id, 'Удален заказ пользователем '+(SELECT email from users WHERE user_id=users.id)
FROM DELETED

GO

CREATE TRIGGER book_insert_update
ON books
AFTER INSERT,UPDATE
AS
UPDATE books
SET Price = Price + Price * 0.13
WHERE Id = (SELECT Id FROM inserted)

GO

CREATE TRIGGER cart_book_INSERT
ON books_carts
AFTER INSERT
AS
INSERT INTO logs(user_id,message)
SELECT cart_id,'Книга' +(SELECT name from books WHERE book_id=books.id)+' добавлена пользователем '+(SELECT email from users WHERE cart_id=users.id)
FROM INSERTED

DROP TRIGGER cart_book_INSERT