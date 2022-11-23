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