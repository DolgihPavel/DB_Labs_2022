use books_store;


--select users who placed order with price > avg
SELECT users.email,price,creation_date,roles.name AS role FROM orders
LEFT JOIN users on orders.user_id = users.id
LEFT JOIN roles on users.role=roles.id
WHERE price > (SELECT AVG(price) FROM orders)

--select users who placed >1 orders
SELECT email,COUNT(*) AS OrdersCount FROM orders
LEFT JOIN users on orders.user_id=users.id
GROUP BY email
HAVING COUNT(*)>1

--just cross join
SELECT authors.name AS Author,books.name FROM authors
CROSS JOIN books

--Union select
SELECT books.name AS Name FROM books
UNION SELECT name FROM authors

--select orders and show book names from the orders
SELECT orders.creation_date, users.email,books.name
FROM Orders
JOIN users ON users.id=Orders.user_id
JOIN books_orders ON books_orders.order_id=orders.id
JOIN books ON books_orders.book_id=books.id

--select every book which has been ordered
SELECT books.name
FROM books_orders
JOIN books ON books.Id = books_orders.book_id


--select users and show count of orders of every user,who placed order
SELECT email, COUNT(orders.Id) as OrdersCount
FROM users
JOIN orders
ON Orders.user_id = users.id
GROUP BY users.Id, users.email;


--select users and show count of orders of every user
SELECT email, COUNT(orders.Id) as OrdersCount
FROM users
LEFT JOIN orders
ON Orders.user_id = users.id
GROUP BY users.Id, users.email;


--select every order and show who placed order
SELECT orders.id,orders.price, users.email
FROM orders
INNER JOIN users ON orders.user_id = users.id


--select genres which have > 1 book
SELECT COUNT(id) as GenreCount, genre_id FROM books
GROUP BY genre_id
HAVING COUNT(id)>1


--select book name which is in cart and which price is <1300
SELECT name
FROM books
WHERE EXISTS (SELECT book_id FROM books_carts WHERE books.id = books_carts.book_id AND Price < 1300);


--range books depending on amount
SELECT id,name,"Amount range"=
CASE
WHEN amount = 0 THEN 'not for sale'
WHEN amount < 500 THEN 'Under 500'
WHEN amount >= 500 and amount < 1000 THEN 'Under 1000'
ELSE 'Over 1000'
END
FROM books


--range books depending on price
SELECT price,name,
IIF(Price>1000,'Expensive','Cheap') AS Info
FROM books

--select logs,user who did action,role of user,name of book,price
SELECT logs.message, users.email, roles.name As Role, books_carts.added_date,books.name,
books.price, book_images.url
FROM logs
JOIN Users ON logs.user_id = users.id
RIGHT JOIN Roles ON users.role = roles.id
LEFT JOIN books_carts ON (SELECT user_id FROM carts WHERE books_carts.cart_id = carts.user_id) = users.id
LEFT JOIN books ON books_carts.book_id = books.id
LEFT JOIN book_images ON book_images.book_id = books.id
WHERE roles.name LIKE 'Customer'
