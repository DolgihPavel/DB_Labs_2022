USE books_store;

SELECT * FROM users

SELECT id,
email,
password,
(SELECT name FROM roles WHERE roles.id=users.role) as role
FROM users
WHERE role=3

SELECT email,password FROM users
WHERE CHARINDEX('@gmail.com',email)>0

UPDATE users
SET email='kolya@gmail.com'
WHERE id=5

SELECT * FROM authors
ORDER BY date_of_birth

SELECT * FROM authors_books

SELECT (SELECT name FROM books WHERE books.id=authors_books.book_id) AS book_name,
(SELECT name FROM authors WHERE authors.id=authors_books.author_id) AS author
FROM authors_books

SELECT * FROM books 
ORDER BY pages DESC

SELECT * FROM books
WHERE price<1000 AND pages<400

SELECT name,
(price*amount) AS TotalSum
FROM books
ORDER BY TotalSum

SELECT * FROM reviews

SELECT (SELECT name FROM books WHERE books.id=reviews.book_id) AS book,
(SELECT email FROM users WHERE users.id=reviews.user_id) AS user_email,
review
FROM reviews

UPDATE book_images
SET url='///img/gallery'
WHERE id=1

SELECT * FROM book_images

SELECT * FROM book_images
WHERE url NOT LIKE 'https:%'

SELECT * FROM books
WHERE price = (SELECT MIN(price) FROM books)

SELECT name,price FROM books
WHERE price > (SELECT AVG(price) FROM books)

SELECT email,password,
(SELECT name FROM roles WHERE roles.id=users.role) AS role_name
FROM users
WHERE id NOT IN (SELECT user_id FROM Orders)

SELECT * FROM books
WHERE Price < (SELECT Price FROM books WHERE name='Hamlet')

SELECT id,email
FROM users
WHERE EXISTS (SELECT * FROM orders WHERE Orders.user_id = users.id)
ORDER BY id

SELECT * FROM books
WHERE NOT EXISTS (SELECT * FROM books_orders WHERE books.id = books_orders.book_id)

SELECT (SELECT name FROM genres WHERE genres.id=genre_id) AS GenreName,
COUNT(*) AS GenresCount
FROM books
GROUP BY genre_id
