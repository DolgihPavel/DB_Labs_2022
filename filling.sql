USE books_store;

INSERT INTO roles(name) VALUES ('admin')
INSERT INTO roles(name) VALUES ('moderator')
INSERT INTO roles(name) VALUES ('customer')

INSERT INTO users(email,password,role) VALUES('udjsb@gmail.com','123456',3)
INSERT INTO users(email,password,role) VALUES('kedr@mail.ru','qwerty',3)
INSERT INTO users(email,password,role) VALUES('admin123@mail.ru','dfjsnmcv126',1)
INSERT INTO users(email,password,role) VALUES('rtd@rambler.ru','qwertyjkgd',3)
INSERT INTO users(email,password,role) VALUES('kolya@mail.ru','kjdfh093',2)
INSERT INTO users(email,password,role) VALUES('vasua@gmail.com','asdnbv',3)

INSERT INTO logs(user_id,message) VALUES(2,'added book in cart')
INSERT INTO logs(user_id,message) VALUES(4,'created order')
INSERT INTO logs(user_id,message) VALUES(6,'made a review')
INSERT INTO logs(user_id,message) VALUES(3,'added new book')
INSERT INTO logs(user_id,message) VALUES(5,'deleted a review')

INSERT INTO genres(name) VALUES('Fantasy')
INSERT INTO genres(name) VALUES('Thriller')
INSERT INTO genres(name) VALUES('Romance')
INSERT INTO genres(name) VALUES('Horror')
INSERT INTO genres(name) VALUES('Mystery')
INSERT INTO genres(name) VALUES('Historical')
INSERT INTO genres(name) VALUES('Classics')

INSERT INTO carts(user_id) VALUES(1)
INSERT INTO carts(user_id) VALUES(2)
INSERT INTO carts(user_id) VALUES(3)
INSERT INTO carts(user_id) VALUES(4)
INSERT INTO carts(user_id) VALUES(5)
INSERT INTO carts(user_id) VALUES(6)

INSERT INTO authors(name,date_of_birth,biography) VALUES('William Shakespeare','1564-4-26','He is widely regarded as the greatest writer in the English language and the worlds pre-eminent dramatist.')
INSERT INTO authors(name,date_of_birth,biography) VALUES('Agatha Christie','1890-10-15','Wrote the worlds longest-running play, the murder mystery The Mousetrap')
INSERT INTO authors(name,date_of_birth,biography) VALUES('Barbara Cartland','1901-7-9','Was an English writer, known as the Queen of Romance')
INSERT INTO authors(name,date_of_birth,biography) VALUES('Danielle Steel','1947-8-14','American writer, best known for her romance novels')
INSERT INTO authors(name,date_of_birth,biography) VALUES('Stephen King','1947-8-14',' American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels.')
INSERT INTO authors(name,date_of_birth,biography) VALUES('Peter Straub','1943-3-2','American novelist and poet.')

INSERT INTO orders(user_id,price,creation_date) VALUES(1,450,'2022-5-3')
INSERT INTO orders(user_id,price,creation_date) VALUES(6,300,'2022-7-12')
INSERT INTO orders(user_id,price,creation_date) VALUES(2,800,'2022-1-1')
INSERT INTO orders(user_id,price,creation_date) VALUES(4,979,'2022-2-23')
INSERT INTO orders(user_id,price,creation_date) VALUES(1,2300,'2022-9-10')
INSERT INTO orders(user_id,price,creation_date) VALUES(2,900,'2022-6-22')

INSERT INTO books(name,price,description,pages,year_of_publishing,isbn,genre_id,amount,status) VALUES
(
	'Romeo and Juliet',
	500,
	'very cool book',
	340,
	1612,
	'3562178903541',
	5,
	100,
	DEFAULT
)

INSERT INTO books(name,price,description,pages,year_of_publishing,isbn,genre_id,amount,status) VALUES
(
	'In Search of Lost Time',
	700,
	'quite nice book',
	280,
	1836,
	'7824561893451',
	3,
	250,
	DEFAULT
)

INSERT INTO books(name,price,description,pages,year_of_publishing,isbn,genre_id,amount,status) VALUES
(
	'Ulysses',
	1200,
	'Ulysses chronicles the passage of Leopold Bloom through Dublin during an ordinary day',
	230,
	1925,
	'5782134689247',
	1,
	300,
	DEFAULT
)

INSERT INTO books(name,price,description,pages,year_of_publishing,isbn,genre_id,amount,status) VALUES
(
	'Don Quixote',
	899,
	'Alonso Quixano, a retired country gentleman in his fifties',
	400,
	1912,
	'4526789128023',
	4,
	50,
	DEFAULT
)

INSERT INTO books(name,price,description,pages,year_of_publishing,isbn,genre_id,amount,status) VALUES
(
	'War and Peace',
	2199,
	'Epic in scale',
	600,
	1897,
	'4231886553195',
	6,
	320,
	DEFAULT
)

INSERT INTO books(name,price,description,pages,year_of_publishing,isbn,genre_id,amount,status) VALUES
(
	'Hamlet',
	1599,
	'The Tragedy of Hamlet, Prince of Denmark',
	523,
	1624,
	'6781245611702',
	2,
	550,
	DEFAULT
)

INSERT INTO books(name,price,description,pages,year_of_publishing,isbn,genre_id,amount,status) VALUES
(
	'The Odyssey',
	1899,
	'The Odyssey is one of two major ancient Greek epic poems attributed to Homer.',
	302,
	1747,
	'4682145674761',
	5,
	100,
	DEFAULT
)

INSERT INTO book_images(book_id,url) VALUES(1,'https:///img/gallery/1.jpeg')
INSERT INTO book_images(book_id,url) VALUES(1,'https:///img/gallery/2.jpeg')
INSERT INTO book_images(book_id,url) VALUES(2,'https:///img/gallery/3.jpeg')
INSERT INTO book_images(book_id,url) VALUES(3,'https:///img/gallery/4.jpeg')
INSERT INTO book_images(book_id,url) VALUES(4,'https:///img/gallery/5.jpeg')
INSERT INTO book_images(book_id,url) VALUES(5,'https:///img/gallery/6.jpeg')
INSERT INTO book_images(book_id,url) VALUES(5,'https:///img/gallery/7.jpeg')
INSERT INTO book_images(book_id,url) VALUES(5,'https:///img/gallery/8.jpeg')
INSERT INTO book_images(book_id,url) VALUES(6,'https:///img/gallery/9.jpeg')
INSERT INTO book_images(book_id,url) VALUES(7,'https:///img/gallery/10.jpeg')

INSERT INTO reviews(book_id,user_id,review) VALUES(2,4,'thanks, very cool book')
INSERT INTO reviews(book_id,user_id,review) VALUES(6,2,'might be better')
INSERT INTO reviews(book_id,user_id,review) VALUES(2,2,'now this is my favorite book!')
INSERT INTO reviews(book_id,user_id,review) VALUES(7,6,'super book, i will read it again 100%')
INSERT INTO reviews(book_id,user_id,review) VALUES(3,1,'i will recommend this book to my friends')

INSERT INTO authors_books(author_id,book_id) VALUES(4,1)
INSERT INTO authors_books(author_id,book_id) VALUES(2,1)
INSERT INTO authors_books(author_id,book_id) VALUES(5,2)
INSERT INTO authors_books(author_id,book_id) VALUES(6,3)
INSERT INTO authors_books(author_id,book_id) VALUES(3,4)
INSERT INTO authors_books(author_id,book_id) VALUES(1,5)
INSERT INTO authors_books(author_id,book_id) VALUES(2,6)
INSERT INTO authors_books(author_id,book_id) VALUES(3,7)
INSERT INTO authors_books(author_id,book_id) VALUES(5,7)

INSERT INTO books_carts(book_id,cart_id,added_date) VALUES(5,1,'2022-7-6')
INSERT INTO books_carts(book_id,cart_id,added_date) VALUES(1,1,'2022-7-7')
INSERT INTO books_carts(book_id,cart_id,added_date) VALUES(7,2,'2022-4-16')
INSERT INTO books_carts(book_id,cart_id,added_date) VALUES(2,4,'2022-5-18')
INSERT INTO books_carts(book_id,cart_id,added_date) VALUES(3,6,'2022-2-5')

INSERT INTO books_orders(order_id,book_id) VALUES(3,4)
INSERT INTO books_orders(order_id,book_id) VALUES(3,5)
INSERT INTO books_orders(order_id,book_id) VALUES(3,7)
INSERT INTO books_orders(order_id,book_id) VALUES(1,2)
INSERT INTO books_orders(order_id,book_id) VALUES(2,3)
INSERT INTO books_orders(order_id,book_id) VALUES(4,1)
INSERT INTO books_orders(order_id,book_id) VALUES(4,5)
INSERT INTO books_orders(order_id,book_id) VALUES(5,6)
INSERT INTO books_orders(order_id,book_id) VALUES(6,7)