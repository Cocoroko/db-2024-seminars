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
