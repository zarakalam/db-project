-- use lower case for table name
-- this particular database is configured to use lowercase for table name
SELECT COUNT(*) FROM books;

SELECT COUNT(*) FROM users ;

-- join practice
-- book name and book category how to join the two using 'id'

-- Task: Display book name and book category name

SELECT books.name, book_categories.name
FROM books
INNER JOIN book_categories ON books.book_category_id = book_categories.id ;

SELECT  b.name , bc.name
FROM books b
INNER JOIN book_categories bc on b.book_category_id = bc.id ;


