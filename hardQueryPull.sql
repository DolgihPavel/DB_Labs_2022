use books_store;

SELECT users.email,price,creation_date,roles.name AS role FROM orders
LEFT JOIN users on orders.user_id = users.id
LEFT JOIN roles on users.role=roles.id
WHERE price > (SELECT AVG(price) FROM orders)

SELECT email,COUNT(*) AS OrdersCount FROM orders
LEFT JOIN users on orders.user_id=users.id
GROUP BY email
HAVING COUNT(*)>1

SELECT authors.name AS Author,books.name FROM authors
CROSS JOIN books

SELECT books.name AS Name FROM books
UNION SELECT name FROM authors

SELECT orders.creation_date, users.email,books.name
FROM Orders
JOIN users ON users.id=Orders.user_id
JOIN books_orders ON books_orders.order_id=orders.id
JOIN books ON books_orders.book_id=books.id

SELECT books.name
FROM books_orders
JOIN books ON books.Id = books_orders.book_id

SELECT email, COUNT(orders.Id) as OrdersCount
FROM users 
JOIN orders 
ON Orders.user_id = users.id
GROUP BY users.Id, users.email;

SELECT email, COUNT(orders.Id) as OrdersCount
FROM users 
LEFT JOIN orders 
ON Orders.user_id = users.id
GROUP BY users.Id, users.email;

SELECT orders.id,orders.price, users.email
FROM orders
INNER JOIN users ON orders.user_id = users.id

SELECT COUNT(id) as GenreCount, genre_id FROM books
GROUP BY genre_id
HAVING COUNT(id)>1

SELECT name
FROM books
WHERE EXISTS (SELECT book_id FROM books_carts WHERE books.id = books_carts.book_id AND Price < 1300);

SELECT id,name,"Amount range"=
	CASE
		WHEN amount =  0 THEN 'not for sale' 
		WHEN amount <  500 THEN 'Under 500'
		WHEN amount >= 500 and amount < 1000 THEN 'Under 1000'
		ELSE 'Over 1000'  
	END
FROM books