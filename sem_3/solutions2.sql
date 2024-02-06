-- 1. Создать схему seminar_3_2.
CREATE SCHEMA seminar_3_2;

-- 2. Создать в этой схеме таблицу cast с ненулевыми полями name и surname, а также birth_date типа date

CREATE TABLE seminar_3_2.cast (
    name        text NOT NULL,
    surname     text NOT NULL,
    birth_date  date
);

-- 3. Запустить следующие операции вставки:
INSERT INTO seminar_3_2.cast VALUES ('Милли', 'Олкок', '2000-04-11'),
                                  ('Мэтт', 'Смит', '1982-10-28'),
                                  ('Эмма', 'Д''Арси', '1992-06-27'),
                                  ('Оливия', 'Кук', '1993-12-27'),
                                  ('Эмили', 'Кэри', '2003-04-30');

INSERT INTO seminar_3_2.cast VALUES ('Юэн', 'Митчелл'),
                                  ('Пэдди', 'Консидайн'),
                                  ('Ив', 'Бест');

SELECT *
FROM seminar_3_2.cast;

-- 4. Добавить primary key -колонку id типа serial (документация). Как называется такой вид ключа?

ALTER TABLE seminar_3_2.cast ADD COLUMN id SERIAL PRIMARY KEY;

SELECT *
FROM seminar_3_2.cast;

-- 5. Добавить ограничение на колонку birth_date – значение по умолчанию равно date ‘1900-01-01’.
-- Выведите все строки таблицы, чтобы проверить значения колонок date и id.

ALTER TABLE seminar_3_2.cast ALTER COLUMN birth_date SET DEFAULT DATE '1900-01-01';

SELECT *
FROM seminar_3_2.cast;

-- 6. Удалите все строки с пустой датой рождения, а после запустите вторую вставку.
-- Снова выведите все строки таблицы и обратите внимание на колонки date и id.

DELETE FROM seminar_3_2.cast
WHERE birth_date IS NULL;

INSERT INTO seminar_3_2.cast VALUES ('Юэн', 'Митчелл'),
                                  ('Пэдди', 'Консидайн'),
                                  ('Ив', 'Бест');

SELECT *
FROM seminar_3_2.cast;

-- 7. Создайте в схеме seminar_3_2 таблицу characters с ненулевым полем name, внешним ключом actor_id,
-- ссылающимся на поле id из таблицы seminar_3_2.cast, текстовым полем comment, полем sex, которое
-- может принимать значения 'male' или 'female'.

CREATE TABLE seminar_3_2.characters (
    name TEXT NOT NULL,
    --actor_id INT REFERENCES seminar_3_2.cast(id)
    actor_id INT,
    comment TEXT,
    sex TEXT CHECK (sex IN ('male', 'female')),
    CONSTRAINT FK_cast FOREIGN KEY (actor_id) REFERENCES seminar_3_2.cast(id)
);


-- 8. Запустите следующие операции вставки в таблицу:

INSERT INTO seminar_3_2.characters (name, actor_id, comment, sex) VALUES ('Рейнира Таргариен', 1, 'Юная принцесса', 'female'),
                                                                       ('Деймон Таргариен', 2, '', 'male'),
                                                                       ('Рейнира Таргариен', 3, 'Принцесса / королева', 'female'),
                                                                       ('Алисента Хайтауэр', 4, 'Королева', 'female'),
                                                                       ('Алисента Хайтауэр', 5, 'Юная леди / королева', 'female'),
                                                                       ('Эймонд Таргариен', 9, 'Принц', 'male');

SELECT *
FROM seminar_3_2.characters;

-- 9. Попробуйте добавить в таблицу:
SELECT *
FROM seminar_3_2.cast;
    -- строку с actor_id, который не встречается в таблице seminar_3_2.cast;
    INSERT INTO seminar_3_2.characters (name, actor_id, comment, sex) VALUES ('Есения Лушко', 8, '', 'female');
    -- не добавится

    -- строку с пустым полем sex: ('Эймонд Таргариен', 9);
    INSERT INTO seminar_3_2.characters (name, actor_id, comment) VALUES ('Эймонд Таргариен', 9, '');


    -- строку с пустым полем actor_id: ('Эймонд Таргариен');
    INSERT INTO seminar_3_2.characters (name) VALUES ('Эймонд Таргариен');

SELECT *
FROM seminar_3_2.characters;

-- Какое поле или набор полей подойдут на роль первичного ключа в этой таблице? (name, actor_id)
-- Добавьте соответствующее ограничение, предварительно удалив строки, которые мешают это сделать.

DELETE FROM seminar_3_2.characters
WHERE sex IS NULL;

ALTER TABLE seminar_3_2.characters ADD PRIMARY KEY (name, actor_id);

SELECT *
FROM seminar_3_2.characters;

-- 11. Удалите из таблицы seminar_3_2.cast актеров, игравших юных героев (содержащих в комментарии слово
-- ‘юный’ или ‘юная’) так, чтобы все их герои также исчезли из таблицы seminar_3_2.characters.
-- Возможно придется удалить созданное ограничение на внешний ключ и задать новое.

ALTER TABLE seminar_3_2.characters DROP CONSTRAINT FK_cast;

ALTER TABLE seminar_3_2.characters ADD CONSTRAINT FK_cast FOREIGN KEY (actor_id) REFERENCES seminar_3_2.cast(id)
ON DELETE CASCADE;

DELETE FROM seminar_3_2.cast
WHERE id IN (
        SELECT actor_id
        FROM seminar_3_2.characters
        WHERE lower(comment) LIKE '%юный%' OR lower(comment) LIKE '%юная%'
    );

SELECT *
FROM seminar_3_2.cast;

SELECT *
FROM seminar_3_2.characters;
