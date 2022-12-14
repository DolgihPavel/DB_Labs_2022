use books_store;
SELECT * FROM books
GO
CREATE PROCEDURE BookSummary AS
BEGIN
SELECT name,price,description,pages,year_of_publishing,isbn,
(SELECT name FROM genres WHERE genre_id = genres.id) AS Genre,
amount,status
FROM books
END;

GO

CREATE PROCEDURE UserSummary AS
BEGIN
SELECT email,password,
(SELECT name FROM roles WHERE role = roles.id) AS Role
FROM users
END;

GO

CREATE PROCEDURE AddBook
@name VARCHAR(150),
@price INT,
@description VARCHAR(500),
@pages INT,
@year INT,
@isbn VARCHAR(13),
@genre_id INT,
@amount INT,
@status VARCHAR(100)
AS
INSERT INTO books(name,price,description,pages,year_of_publishing,isbn,genre_id,amount,status)
VALUES(@name, @price, @description, @pages,@year,@isbn,@genre_id,@amount,@status);

GO

CREATE PROCEDURE AddReview
@book_id INT,
@user_id INT,
@review VARCHAR(300)
AS
INSERT INTO reviews(book_id,user_id,review)
VALUES(@book_id,@user_id,@review);

GO

CREATE PROCEDURE DeleteBook
@name VARCHAR(150)
AS
DELETE books
WHERE name=@name;

GO

CREATE PROCEDURE DeleteAllReviewsOnBook
@book_name VARCHAR(150)
AS
DELETE reviews
WHERE (SELECT name FROM books WHERE reviews.book_id=book_id) LIKE @book_name;

GO

CREATE PROCEDURE AddOrder
@user_id INT,
@price INT,
@date DATE
AS
INSERT INTO orders(user_id,price,creation_date)
VALUES(@user_id,@price,@date);