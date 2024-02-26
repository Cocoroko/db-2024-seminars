-- 1. Создать схему sem_1:

CREATE SCHEMA IF NOT EXISTS sem_1;

--2. Создать таблицу sem_1.movies с полями
-- title (название фильма)
-- release_year (год выпуска)
-- duration_min (длительность в мин)
-- genre (жанры)
-- rating (рейтинг)
-- director (режиссёр)
-- star_1 (1й главный актёр)
-- star_2 (2й главный актёр)

DROP TABLE IF EXISTS sem_1.movies;
CREATE TABLE sem_1.movies (
    title VARCHAR(100),
    release_year INTEGER,
    duration_min INTEGER,
    genre VARCHAR,
    rating NUMERIC,
    director VARCHAR(50),
    star_1 VARCHAR(50),
    star_2 VARCHAR(50)
);


--15. Найдите кол-во фильмов, кол-во различных режиссёров, самый ранний и поздний год релиза

SELECT COUNT(*) AS film_cnt,
       COUNT(DISTINCT director) AS director_cnt,
       MIN(release_year) AS min_year,
       MAX(release_year) AS max_year
FROM sem_1.movies;

--16. Выведите для каждого режиссёра кол-во его фильмов. Упорядочить по убыванию кол-ва фильмов

SELECT director, COUNT(*) AS film_cnt
FROM sem_1.movies
GROUP BY 1
ORDER BY 2 desc;

--17. Сколько часов займёт просмотр всех фильмов 'Quentin Tarantino'?

SELECT SUM(duration_min) / 60 as ans
FROM sem_1.movies
WHERE director = 'Quentin Tarantino';

-- 18. Выведите всех актёров, которые были 1-м главным актёром в более чем 3х фильмах,
-- и кол-во таких фильмов соответственно

SELECT star_1, COUNT(*) AS film_cnt
FROM sem_1.movies
GROUP BY 1
HAVING COUNT(*) > 3;

--19. Найдите всех режиссёров 21го века (первый фильм был снят после 2000го года). Вывести режиссёра и год первого фильма

SELECT director, MIN(release_year) as first_film_year
FROM sem_1.movies
GROUP BY 1
HAVING MIN(release_year) > 2000;

--20. Выведите фильм с самым большим рейтингом

SELECT *
FROM sem_1.movies
ORDER BY rating desc
LIMIT 1;

--21. Выведите для каждого режиссёра его самый ранний фильм (при равенстве годов выводить с наибольшим рейтингом)
-- Вывести стобцы режиссёр, название фильма, год, рейтинг

SELECT DISTINCT ON (director) director, title, release_year, rating
FROM sem_1.movies
ORDER BY 1, 4 desc;

--22. Найдите кол-во и средний рейтинг фильмов для двух категорий: фильмы 20го и 21го века
-- Округлить до двух знаков после запятой

SELECT
    CASE WHEN release_year <= 2000 THEN '20й век'
        ELSE '21й век'
    END AS category,
    CAST(AVG(rating) AS NUMERIC(3, 2)) AS avg_rating,
    COUNT(DISTINCT title) as film_cnt
FROM sem_1.movies
GROUP BY 1;



__________________



-- 1. Создать схему sem_2:

CREATE SCHEMA IF NOT EXISTS sem_2;

--2. Создать следующие таблицы. Какие первичные и внешние ключи нужны здесь? Создайте их.
-- Колонку id заведите типа serial. Как называется такой вид ключа?
/*
movies
id (идентификатор фильма)
title (название фильма)
release_year (год выпуска)
duration_min (длительность в мин)
rating (рейтинг)
director (режиссёр)
*/

DROP TABLE IF EXISTS sem_2.movies CASCADE;
CREATE TABLE sem_2.movies (
	id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    release_year INTEGER,
    duration_min INTEGER,
    rating NUMERIC,
    director VARCHAR(50)
);

/*
actors
id (идентификатор актёра)
first_nm (имя актёра)
last_nm (фамилия актёра)
*/

DROP TABLE IF EXISTS sem_2.actors CASCADE;
CREATE TABLE sem_2.actors (
	id SERIAL PRIMARY KEY,
    first_nm VARCHAR(50),
    last_nm VARCHAR(50)
);

/*
cast
movie_id (идентификатор фильма)
actor_id (идентификатор актёра)
character_nm (персонаж)
*/

DROP TABLE IF EXISTS sem_2.cast;
CREATE TABLE sem_2.cast (
	movie_id SERIAL REFERENCES sem_2.movies(id),
	actor_id SERIAL REFERENCES sem_2.actors(id),
    character_nm VARCHAR(100)	
);

/*
genres
movie_id (идентификатор фильма)
genre_nm (жанр)
*/

DROP TABLE IF EXISTS sem_2.genres;
CREATE TABLE sem_2.genres (
	movie_id SERIAL,
    genre_nm VARCHAR(50),
	CONSTRAINT FK_GenresMovie FOREIGN KEY (movie_id) REFERENCES sem_2.movies(id)
);

--3. Заполнить таблицу movies 3 тестовыми строками.

INSERT INTO sem_2.movies (title, release_year, duration_min, rating, director) VALUES 
('Avatar', 2009, 162, 7.8, 'James Cameron'),
('Harry Potter and the Half-Blood Prince', 2009, 153, 7.6, 'David Yates'),
('The Avengers', 2012, 143, 8.0, 'Joss Whedon');

--4. Добавить в таблицу movies новое поле `comment`.

ALTER TABLE sem_2.movies ADD comment VARCHAR;

--5. Написать запрос для обновления поля с комментарием. 
-- Для каждой строки необходимо указать свой комментарий. 
-- Подумайте, как это сделать одной операций `UPDATE`, а не пятью разными запросами.

UPDATE sem_2.movies
SET comment = CASE
WHEN title = 'Avatar' THEN 'понравился'
WHEN title = 'Harry Potter and the Half-Blood Prince' THEN 'не понравился'
WHEN title = 'The Avengers' THEN 'восторг'
END
WHERE title IN (SELECT title FROM sem_2.movies);

--6. Удалить одну из строк таблицы на выбор.

DELETE FROM sem_2.movies
WHERE title = 'Avatar';

--7. Очистить таблицу, используя оператор группы DDL.

SELECT *
FROM sem_2.movies;

TRUNCATE TABLE sem_2.movies CASCADE;

--8. Снова заполните таблицу и обратите внимание на идентификаторы.

INSERT INTO sem_2.movies (title, release_year, duration_min, rating, director) VALUES 
('Avatar', 2009, 162, 7.8, 'James Cameron'),
('Harry Potter and the Half-Blood Prince', 2009, 153, 7.6, 'David Yates'),
('The Avengers', 2012, 143, 8.0, 'Joss Whedon');

SELECT *
FROM sem_2.movies;

--Для реального удаления можно использовать TRUNCATE TABLE table_name RESTART IDENTITY;

TRUNCATE TABLE sem_2.movies RESTART IDENTITY CASCADE;

--9. Удалить из таблицы столбец с комментарием.

ALTER TABLE sem_2.movies DROP comment;

--10. Запустить операции вставки из отдельного файла

--11. Найдите все фильмы жанра Crime. Вывести название фильма, год выпуска и рейтинг

SELECT title, release_year, rating
FROM sem_2.movies t1
INNER JOIN sem_2.genres t2
	ON t1.id = t2.movie_id
	and t2.genre_nm = 'Crime';
	
--12. Найдите ID актёров, по которым нет информации о фильмах, в которых они снимались

SELECT DISTINCT t1.id
FROM sem_2.actors t1
LEFT JOIN sem_2.cast t2
ON t1.id = t2.actor_id
WHERE t2.movie_id IS NULL;

--13. Как зовут актёра, игравшего 'Harry Potter'?

SELECT DISTINCT first_nm || ' ' || last_nm
FROM sem_2.cast t1
INNER JOIN sem_2.actors t2
	ON t1.actor_id = t2.id
WHERE character_nm = 'Harry Potter';

--14. Выведите все фильмы 90х жанров Drama и Romance
SELECT title, release_year, t2.genre_nm
FROM sem_2.movies t1
INNER JOIN sem_2.genres t2
	ON t1.id = t2.movie_id
	AND t2.genre_nm IN ('Drama', 'Romance')
	AND release_year BETWEEN 1990 AND 1999;

--15. Для каждого жанра найдите кол-во фильмов и средний рейтинг
-- Отсортировать по убыванию среднего рейтинга, при равенстве по убыванию кол-ва фильмов
SELECT genre_nm, COUNT(DISTINCT t1.id) AS film_cnt, CAST(AVG(rating) AS NUMERIC(3, 1)) AS avg_rating
FROM sem_2.movies t1
INNER JOIN sem_2.genres t2
	ON t1.id = t2.movie_id
GROUP BY 1
ORDER BY 3 DESC, 2 DESC;
	
--16. Для каждого актёра выведите кол-во фильмов, в которых он сыграл (может быть 0).
-- Отсортировать по убыванию кол-ва фильмов

SELECT DISTINCT first_nm || ' ' || last_nm as actor, COUNT(DISTINCT movie_id)
FROM sem_2.actors t1
LEFT JOIN sem_2.cast t2
	ON t2.actor_id = t1.id
GROUP BY 1
ORDER BY 2 DESC;

--17. Найдите все фильмы, в которых играл Jake Gyllenhaal. Выведите название фильма,
-- год выпуска и длительность. Отсортируйте по увеличению длительности фильма

SELECT title, release_year, duration_min
FROM sem_2.actors t1
INNER JOIN sem_2.cast t2
	ON t1.id = t2.actor_id
	AND t1.first_nm = 'Jake'
	AND t1.last_nm = 'Gyllenhaal'
INNER JOIN sem_2.movies t3
	ON t2.movie_id = t3.id
ORDER BY 3;

--18. Выведите все фильмы с актёром, который играл 'Captain Jack Sparrow'
SELECT DISTINCT t3.title
FROM sem_2.cast t1
INNER JOIN sem_2.cast t2
	ON t2.actor_id = t1.actor_id and t1.character_nm = 'Captain Jack Sparrow'
INNER JOIN sem_2.movies t3
	ON t3.id = t2.movie_id;
	
--19. Для каждого фильма выведите его жанры через запятую в виде строки 
-- (например, с помощью STRING_AGG)
-- Если для фильма не указан жанр, вывести -.

SELECT title, 
	CASE WHEN STRING_AGG(genre_nm, ', ') IS NOT NULL THEN STRING_AGG(genre_nm, ', ')
	ELSE '-' END AS genre
FROM sem_2.movies t1
LEFT JOIN sem_2.genres t2
	ON t1.id = t2.movie_id
GROUP BY 1;

--20. Найдите всех актёров, которых играли вместе с Leonardo DiCaprio.
-- Опционально: вывести фильмы, в которых они играли вместе. 

SELECT DISTINCT t4.first_nm || ' ' || t4.last_nm as actor
FROM sem_2.actors t1
INNER JOIN sem_2.cast t2
	ON t1.id = t2.actor_id
	AND t1.first_nm = 'Leonardo'
	AND t1.last_nm = 'DiCaprio'
INNER JOIN sem_2.cast t3
	USING (movie_id)
INNER JOIN sem_2.actors t4
	ON t3.actor_id = t4.id;
	
SELECT DISTINCT t4.first_nm || ' ' || t4.last_nm as actor, title
FROM sem_2.actors t1
INNER JOIN sem_2.cast t2
	ON t1.id = t2.actor_id
	AND t1.first_nm = 'Leonardo'
	AND t1.last_nm = 'DiCaprio'
INNER JOIN sem_2.cast t3
	USING (movie_id)
INNER JOIN sem_2.actors t4
	ON t3.actor_id = t4.id
	AND t4.first_nm != 'Leonardo'
	AND t4.last_nm != 'DiCaprio'
INNER JOIN sem_2.movies t5
	ON t3.movie_id = t5.id;


