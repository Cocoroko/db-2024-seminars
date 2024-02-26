CREATE SCHEMA IF NOT EXISTS sem_2;

DROP TABLE IF EXISTS sem_2.movies CASCADE;
CREATE TABLE sem_2.movies (
	id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    release_year INTEGER,
    duration_min INTEGER,
    rating NUMERIC,
    director VARCHAR(50)
);

DROP TABLE IF EXISTS sem_2.actors CASCADE;
CREATE TABLE sem_2.actors (
	id SERIAL PRIMARY KEY,
    first_nm VARCHAR(50),
    last_nm VARCHAR(50)
);


DROP TABLE IF EXISTS sem_2.cast;
CREATE TABLE sem_2.cast (
	movie_id SERIAL REFERENCES sem_2.movies(id),
	actor_id SERIAL REFERENCES sem_2.actors(id),
    character_nm VARCHAR(100)
);

DROP TABLE IF EXISTS sem_2.genres;
CREATE TABLE sem_2.genres (
	movie_id SERIAL,
    genre_nm VARCHAR(50),
	CONSTRAINT FK_GenresMovie FOREIGN KEY (movie_id) REFERENCES sem_2.movies(id)
);


--11. Найдите все фильмы жанра Crime. Вывести название фильма, год выпуска и рейтинг

SELECT title, release_year, rating
FROM sem_2.movies t1
INNER JOIN sem_2.genres t2
	ON t1.id = t2.movie_id
	and t2.genre_nm = 'Crime';

--12. Найдите ID актёров, по которым нет информации о фильмах, в которых они снимались

SELECT DISTINCT t1.id, t1.first_nm, t1.last_nm
    FROM sem_2.actors t1 LEFT JOIN sem_2.cast t2
        ON t1.id = t2.actor_id
    WHERE t2.movie_id IS NULL;

--13. Как зовут актёра, игравшего 'Harry Potter'?

SELECT DISTINCT (first_nm || ' ' || last_nm) as ActorName
    FROM sem_2.cast t1  INNER JOIN sem_2.actors t2
	    ON t1.actor_id = t2.id
            WHERE character_nm = 'Harry Potter';

--14. Выведите все фильмы 90х жанров Drama и Romance
SELECT title, release_year, t2.genre_nm
    FROM sem_2.movies t1 INNER JOIN sem_2.genres t2
	    ON t1.id = t2.movie_id AND t2.genre_nm IN ('Drama', 'Romance') AND release_year BETWEEN 1990 AND 1999;

--15. Для каждого жанра найдите кол-во фильмов и средний рейтинг
-- Отсортировать по убыванию среднего рейтинга, при равенстве по убыванию кол-ва фильмов
SELECT genre_nm, COUNT(DISTINCT t1.id) AS film_cnt, cast(AVG(rating) as NUMERIC(3,2)) AS avg_rating
    FROM sem_2.movies t1 INNER JOIN sem_2.genres t2
        ON t1.id = t2.movie_id
GROUP BY genre_nm
ORDER BY AVG(rating) DESC, COUNT(DISTINCT t1.id) DESC;


--19. Для каждого фильма выведите его жанры через запятую в виде строки
-- (например, с помощью STRING_AGG)
-- Если для фильма не указан жанр, вывести -.

SELECT title,
	CASE
	    WHEN STRING_AGG(genre_nm, ', ') IS NOT NULL
	        THEN STRING_AGG(genre_nm, ', ')
	ELSE '-'
	    END
	    AS genre
FROM sem_2.movies t1 LEFT JOIN sem_2.genres t2
	ON t1.id = t2.movie_id
GROUP BY 1;

--20. Найдите всех актёров, которых играли вместе с Leonardo DiCaprio.

-- step 1
SELECT *
    FROM sem_2.actors t1 INNER JOIN sem_2.cast t2
	    ON t1.id = t2.actor_id AND t1.first_nm = 'Leonardo' AND t1.last_nm = 'DiCaprio';

-- step 2
SELECT *
    FROM sem_2.actors t1 INNER JOIN sem_2.cast t2
	    ON t1.id = t2.actor_id AND t1.first_nm = 'Leonardo' AND t1.last_nm = 'DiCaprio'
INNER JOIN sem_2.cast t3
	USING (movie_id);

--step 3
SELECT DISTINCT (t4.first_nm, t4.last_nm) as actor
    FROM sem_2.actors t1 INNER JOIN sem_2.cast t2
	    ON t1.id = t2.actor_id AND t1.first_nm = 'Leonardo' AND t1.last_nm = 'DiCaprio'
INNER JOIN sem_2.cast t3
	USING (movie_id)
INNER JOIN sem_2.actors t4
	ON t3.actor_id = t4.id;
