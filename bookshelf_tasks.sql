-- 1. Найти автора с самым большим числом книг и вывести его имя
SELECT authors.name as 'Автор', COUNT(authors.name) as count  FROM authors
JOIN authors_books ON authors_books.authors_id = authors.id
JOIN books ON authors_books.books_id = books.id
GROUP BY authors.name
ORDER BY count DESC
LIMIT 1
;
-- 2. Вывести пять самых старых книг у которых указан год издания
SELECT * FROM books
WHERE year LIKE '%%'
ORDER BY year ASC
LIMIT 5
;
-- 3. Вывести общее количество книг на полке в кабинете
SELECT COUNT(shelves.title) as 'Количество книг' FROM shelves
JOIN books ON shelves.id = books.shelves_id
WHERE shelves.title = 'Полка в кабинете'
;
-- 4. Вывести названия, имена авторов и годы издания книг, которые находятся на полке в спальне
SELECT books.title as 'Название', authors.name as 'Автор', books.year as 'Год', shelves.title 'Полка' FROM shelves
JOIN books ON shelves.id = books.shelves_id
JOIN authors_books ON books.id = authors_books.books_id
JOIN authors ON authors_books.authors_id = authors.id
WHERE shelves.title = 'Полка в спальне'
;
-- 5. Вывести названия и годы издания книг, написанных автором 'Лев Толстой'
SELECT books.title as 'Книга', books.year 'Год', authors.name as 'Автор' FROM books
JOIN authors_books ON books.id = authors_books.books_id
JOIN authors ON authors_books.authors_id = authors.id
WHERE authors.name = 'Лев Толстой'
;
-- 6. Вывести название книг, которые написали авторы, чьи имена начинаются на букву "А"
SELECT books.title as 'Книга', authors.name as 'Автор' FROM books
JOIN authors_books ON books.id = authors_books.books_id
JOIN authors ON authors_books.authors_id = authors.id
WHERE authors.name LIKE 'А%'
;
-- 7. Вывести название книг и имена авторов для книг, которые находятся на полках, названия которых включают слова «верхняя» или «нижняя»
SELECT books.title as 'Книга', authors.name as 'Автор', shelves.title as 'Полка' FROM books
JOIN authors_books ON books.id = authors_books.books_id
JOIN authors ON authors_books.authors_id = authors.id
JOIN shelves ON books.shelves_id = shelves.id
WHERE 
    (shelves.title LIKE 'верхняя%') 
    OR 
    (shelves.title LIKE 'нижняя%')
;
-- 8. Книгу «Божественная комедия» автора «Данте Алигьери» одолжили почитать другу Ивану Иванову, необходимо написать один или несколько запросов которые отразят это событие в БД
UPDATE books
JOIN authors_books ON authors_books.books_id = books.id
JOIN authors ON authors_books.authors_id = authors.id
SET books.friends_id = (SELECT friends.id FROM friends WHERE friends.name = 'Иванов Иван')
WHERE authors.name = 'Данте Алигьери' AND books.title = 'Божественная комедия'
and books.id > 0
;
-- 9. Добавить в базу книгу «Краткие ответы на большие вопросы», год издания 2020, автор «Стивен Хокинг», положить ее на полку в кабинете
INSERT INTO books (books.title, books.year, books.shelves_id)
VALUES ('Краткие ответы на большие вопросы', '2020', 1)
;
INSERT INTO authors (authors.name)
VALUES ('Стивен Хокинг')
;
INSERT INTO authors_books (authors_books.books_id, authors_books.authors_id)
VALUES (176, 145)
;