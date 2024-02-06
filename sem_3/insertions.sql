create schema if not exists sem_3;

-- Создать таблицу db_instructor_salary с полями name, dt, salary_amt и salary_type

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
INSERT INTO sem_3.db_instructor_salary VALUES ('Шевченко Игорь', '2024-02-25', 2999.00, 1);
INSERT INTO sem_3.db_instructor_salary VALUES ('Шевченко Игорь', '2024-02-25', 5800.00, 2);
INSERT INTO sem_3.db_instructor_salary VALUES ('Шевченко Игорь', '2024-03-05', 6400.00, 1);
INSERT INTO sem_3.db_instructor_salary VALUES ('Шевченко Игорь', '2024-03-05', 8300.00, 2);

