-- 1. Вывести сколько фильмов сняла кинокомпания Universal Pictures
SELECT count(*) FROM movies
JOIN companies ON movies.id_companies = companies.id
WHERE companies.title = 'Universal Pictures';

-- 2. Вывести сколько всего фильмов было снято режиссером Фрэнсисом Фордом Копполой
SELECT count(*) FROM movies
JOIN directors ON movies.id_directors = directors.id
WHERE directors.full_name = 'Фрэнсис Форд Коппола';

-- 3. Вывести количество снятых фильмов за последние 20 лет
SELECT count(title) FROM movies
WHERE year > year(curdate()) - 20;
-- 4. Вывести все жанры фильмов в которых снимал Стивен Спилберг в течении всей своей карьеры
SELECT DISTINCT genres.title FROM movies
JOIN genres ON movies.id_genres = genres.id
JOIN directors ON movies.id_directors = directors.id
WHERE directors.full_name = 'Стивен Спилберг';

-- 5. Вывести названия, жанры и режиссеров 5 самых дорогих фильмов
SELECT movies.title, genres.title, directors.full_name FROM movies
JOIN genres ON movies.id_genres = genres.id
JOIN directors ON movies.id_directors = directors.id
ORDER BY budget DESC
LIMIT 5;

-- 6. Вывести имя режиссера с самым большим количеством фильмов
SELECT directors.full_name FROM movies
JOIN directors ON movies.id_directors = directors.id
GROUP BY directors.full_name
ORDER BY COUNT(directors.full_name) DESC
LIMIT 1;

-- 7. Вывести названия и жанры фильмов, снятые самой большой кинокомпанией (по сумме всех бюджетов фильмов)
SELECT movies.title, genres.title FROM movies
JOIN genres ON movies.id_genres = genres.id
JOIN companies ON movies.id_companies = companies.id
WHERE companies.title = (
SELECT companies.title FROM movies
JOIN companies ON movies.id_companies = companies.id
GROUP BY companies.title
ORDER BY SUM(movies.budget) DESC
LIMIT 1
);

-- 8. Вывести средний бюджет фильмов, снятых кинокомпанией Warner Bros.
SELECT avg(movies.budget) FROM movies
JOIN companies ON movies.id_companies = companies.id
WHERE companies.title = 'Warner Bros.'
GROUP BY companies.title;

-- 9. Вывести количество фильмов каждого жанра и средний бюджет по жанру
SELECT genres.title, COUNT(movies.id), AVG(movies.budget) FROM movies
JOIN genres ON movies.id_genres = genres.id
GROUP BY genres.title;

-- 10. Найти и удалить комедию "Дикие истории" 2014-го года
DELETE FROM movies
WHERE id = (SELECT id FROM (SELECT movies.id FROM movies
JOIN genres ON movies.id_genres
WHERE movies.title = 'Дикие истории' AND genres.title = 'комедия'
) as tmp);