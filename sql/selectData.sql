SELECT * FROM books;

SELECT * 
FROM books 
WHERE books."id" IN (SELECT "id" FROM books_categories WHERE books_categories."categoryId" = 2);

SELECT books."id" AS "bookId",
books."name" AS "book",
books."pages",
books."authorId",
categories."name" AS "category"
FROM books
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON categories."id" = books_categories."categoryId";

SELECT books."id" AS "bookId",
books."name" AS "book",
authors."id" AS "authorId",
authors."name" AS "author",
authors."bio" AS "authorsBio"
FROM books 
LEFT JOIN authors ON authors."id" = books."authorId"
WHERE books."name" LIKE 'Harry Potter%';