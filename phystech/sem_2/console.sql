create schema if not exists sem_2;

create table if not exists sem_2.first_part_people (
    first_name varchar,
    second_name varchar,
    age integer
);

drop table sem_2.first_part_people;

insert into sem_2.first_part_people values
                             ('Emily','Watson', 28),
                             ('Adam', 'Patel', 35),
                             ('Sophia', 'Lee', 42),
                             ('Daniel', 'Anderson', 19),
                             ('Jasmine', 'Garcia', 31);

insert into sem_2.first_part_people (first_name, age) values ('Ilia', 30);


create table if not exists sem_2.second_part_people (
    first_name varchar,
    second_name varchar,
    age integer
);

-- drop table sem_2.second_part_people;

insert into sem_2.second_part_people values
                             ('Kate','Andersen', 25),
                             ('Mikhail', 'Vick', 35),
                             ('Alla', 'Pugachova', 20),
                             ('Kate', 'Takker', 50);

insert into sem_2.second_part_people (first_name, second_name) values ('Adam', 'Takker');


select * from
    sem_2.first_part_people as first inner join sem_2.second_part_people as second
    on first.age = second.age;

insert into sem_2.first_part_people (first_name, second_name) values ('Esya', 'Lushko');

select * from
    sem_2.first_part_people as first inner join sem_2.second_part_people as second
    on first.age = second.age;

-- NUll != NUll

select * from
    sem_2.first_part_people as first join sem_2.second_part_people as second
    on first.age = second.age;


select * from
    sem_2.first_part_people as first left join sem_2.second_part_people as second
    on first.age = second.age;


select * from
    sem_2.first_part_people as first right join sem_2.second_part_people as second
    on first.age = second.age;

select * from
    sem_2.first_part_people as first full join sem_2.second_part_people as second
    on first.age = second.age;


select * from
    sem_2.first_part_people as first cross join sem_2.second_part_people as second;

-- number rows1 * number rows2



-- self join examples
create table if not exists sem_2.managers (
  id integer,
  fullName varchar,
  salary integer,
  managerId integer NULL
);


insert into sem_2.managers values (1, 'John Smith',	10000,3),
    (2, 'Jane Anderson', 12000, 3),
    (3, 'Tom Lanon', 15000, 4),
    (4,	'Anne Connor', 20000, NULL),
    (5, 'Jeremy York', 9000, 1);


select first.id, first.fullname, second.id, second.fullName from
    sem_2.managers first join sem_2.managers second
         on first.managerId = second.id;

