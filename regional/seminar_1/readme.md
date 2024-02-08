## Семинар 1. Введение, установка софта, hello_world.

### План курса
* Лекции (15 шт)
* Семинары (15 шт)

### Отчетность

Дифференцированный зачет.

Итоговая отметка состоит из:
* Выполнение проекта - от 1 до 7 баллов, есть блокирующие задания. Детализация будет позже, после первых нескольких занятий.
* Сдача лекционных КР - от 0 до 3 баллов: 3 КР на лекциях по материалам нескольких предшествующих лекций, за каждую можно получить от 0 до 1 балла.

### Необходимый минимум действий в начале курса 

* Заполнить форму регистрации - https://forms.gle/Q5hwsqyGgZQtkJcSA
* Присоединиться к каналу курса - https://t.me/+zaj2bjabvjY4ZjAy
* Присоединиться к чату курса - https://t.me/+pRbdWjkKcgRlZTFi
* Присоединиться к серверу Discord - [ссылка будет позже]
* Создать аккаунт на github.com, создать репозиторий для проекта и добавить своего семинариста в коллабораторы. Инструкция по [ссылке](https://docs.google.com/document/d/1_RIOUFvfOcFn89C4xZOQi1nVGz5jpV5fxFVbAkWCaAw/edit)

### Установка необходимого ПО

Инструкцию можно найти по [ссылке](https://gitlab.atp-fivt.org/courses-public/db2023-supplementary/global/-/tree/main/practice/docker/quickstart
)

Дополнение к инструкции по установке софта на Windows по [ссылке](https://docs.google.com/document/d/1A9cNEUDMBIdRCdO0BEo_tJmzLRrsh_rGdP1h02k0ypE/edit)


### Первая программа

После установки всего софта можно написать первую программу. 

Создадим простейшую одноколоночную таблицу, заполним ее тестовыми данными и выведем содержимное.

``` sql

create table if not exists my_first_table (
    my_data varchar(15)
);

INSERT INTO my_first_table.my_data VALUES ('Hello World!');

select * from my_first_table;
```


