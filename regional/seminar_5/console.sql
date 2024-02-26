
create schema if not exists sem_3;

-- Создать таблицу db_instructor_salary с полями name, dt, salary_amt и salary_type

drop table if exists  sem_3.db_instructor_salary;

CREATE TABLE sem_3.db_instructor_salary (
    name VARCHAR (120),
    dt DATE,
    salary_amt DECIMAL (12,2),
    salary_type SMALLINT
);

INSERT INTO sem_3.db_instructor_salary VALUES ('Смолкина Юлия', '2019-02-25', 2999.00, 1);
INSERT INTO sem_3.db_instructor_salary VALUES ('Викентьев Михаил', '2019-03-05', 5100.00, 1);
INSERT INTO sem_3.db_instructor_salary VALUES ('Викентьев Михаил', '2019-03-05', 6800.00, 3);
INSERT INTO sem_3.db_instructor_salary VALUES ('Лушко Есения', '2019-02-25', 10499.00, 1);
INSERT INTO sem_3.db_instructor_salary VALUES ('Лушко Есения', '2019-03-05', 13000.00, 1);
INSERT INTO sem_3.db_instructor_salary VALUES ('Шевченко Игорь', '2024-02-25', 2999.00, 2);
INSERT INTO sem_3.db_instructor_salary VALUES ('Шевченко Игорь', '2024-02-25', 5800.00, 2);
INSERT INTO sem_3.db_instructor_salary VALUES ('Шевченко Игорь', '2024-03-05', 6400.00, 1);
INSERT INTO sem_3.db_instructor_salary VALUES ('Шевченко Игорь', '2024-03-05', 8300.00, 2);

SELECT *
FROM sem_3.db_instructor_salary;


-- С помощью скалярного подзапроса найти имена преподавателей, которые получили разово минимальную выплату за все время.


SELECT name
    FROM sem_3.db_instructor_salary
WHERE salary_amt = (
    SELECT min(salary_amt)
    FROM sem_3.db_instructor_salary
)
GROUP BY name;
-- HAVING count (*) > 1;


-- С помощью скалярного подзапроса найти имена преподавателей, у которых выплата по тому или иному типу
-- была максимальной. Вывести имя преподавателя и тип выплаты, используя саsе или dесоde
-- (1 - выплата за семинарские занятия, 2 - выплата за лекционные занятия, 3 - премиальная часть);

-- SELECT max (salary_amt)
--         FROM db_instructor_salary
--     GROUP BY salary_type

SELECT name,
    CASE salary_type
        WHEN 1
            THEN 'семинар'
        WHEN 2
            THEN 'лекция'
        WHEN 3
            THEN 'премия'
    END AS salary_type_name

    FROM sem_3.db_instructor_salary
WHERE salary_amt = ANY (
    SELECT max (salary_amt)
        FROM sem_3.db_instructor_salary
    GROUP BY salary_type
);


-- С помощью EXISTS вывести имена преподавателей, тип и сумму выплат по каждому типу за все время работы, при условии,
-- что у преподавателя была выплата за лекционные занятия;

-- SELECT name
--     FROM sem_3.db_instructor_salary AS t2
--     WHERE salary_type = 2

SELECT name, salary_type, sum(salary_amt)
FROM sem_3.db_instructor_salary AS t1
WHERE EXISTS (
    SELECT name
    FROM sem_3.db_instructor_salary AS t2
    WHERE salary_type = 2 AND t1.name = t2.name)
GROUP BY name, salary_type;

-- С помощью аналитической функции COUNT найти количество выплат по каждому преподавателю за каждое число;
-- выведите также размер каждой выплаты.

-- SELECT name, dt, count(*) AS count_salary
--     FROM sem_3.db_instructor_salary
--     GROUP BY name, dt

SELECT t1.name, t1.dt, salary_amt, count_salary
FROM sem_3.db_instructor_salary as t1 JOIN
    (
    SELECT name, dt, count(*) AS count_salary
    FROM sem_3.db_instructor_salary
    GROUP BY name, dt
    )
        AS t2
ON t1.name = t2.name AND t1.dt = t2.dt;

-- С помощью аналитической функции SUM найти общий размер выплат по каждому преподавателю за каждое число;
-- выведите также размер каждой выплаты.

-- SELECT name, dt, sum(salary_amt) AS sum_salary
--     FROM sem_3.db_instructor_salary
--     GROUP BY name, dt;

SELECT t1.name, t1.dt, salary_amt, sum_salary
FROM sem_3.db_instructor_salary as t1
JOIN (
    SELECT name, dt, sum(salary_amt) AS sum_salary
    FROM sem_3.db_instructor_salary
    GROUP BY name, dt
) AS t2
ON t1.name = t2.name AND t1.dt = t2.dt;

