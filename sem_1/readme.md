### Семинар 1 

## Введение, базовый синтаксис

Операторы, которые есть в sql, делятся на несколько типов: 

<img src="images/img0_sql_statements.png"  width="500">

Типы данных SQL:

<img src="img/img1_sql_datatypes.png"  width="500">


**(Data Defenition Language):**

1. `CREATE` – создание объектов БД
```sql
CREATE TABLE [IF NOT EXISTS] table_name(
    col_name_1   datatype_1,
    col_name_2   datatype_2,
    ...
    col_name_N   datatype_N
);
```

2. `ALTER` – модификация объектов БД
```sql
ALTER TABLE table_name ADD column_name datatype;
ALTER TABLE table_name DROP column_name;
ALTER TABLE table_name RENAME column_name TO new_column_name;
ALTER TABLE table_name ALTER column_name TYPE datatype;
...
```

3. `DROP` – удаление объектов БД 
```sql
DROP TABLE [IF EXISTS] table_name;
```

4. `TRUNCATE` – удаление содержимого объекта БД 
```sql
TRUNCATE TABLE table_name;

Отличия DROP от DELETE:
DROP удаляет саму таблицу, в то время, как TRUNCATE очищает таблицу от данных, но сам "каркас" таблицы остается жить.
ПО этой причине TRUNCATE работает быстрее DELETE.
Кроме того, DELETE позволяет использовать условия WHERE которых вы можете указать в каких случаях необходимо произвести удаления, а TRUNICATE вам этого сделать не позволит, WHERE в ней нет.
DELETE - медленнее, TRUNICATE - быстрее (заметно будет при больших объёмах данных)
DELETE записывает в журнал транзакций каждое удаление
для DELETE требуются права на удаление, а TRUNICATE требует права на изменение таблицы ( ALTER TABLE)
вызов DELETE может активировать триггеры,  а TRUNICATE нет
DELETE блокирует удаляемую строку (строки) TRUNICATE - блокирует таблицу.

**Операторы манипуляции данными (Data Manipulation Language):**

1. `SELECT` – выбирает данные, удовлетворяющие заданным условиям
2. `INSERT` – добавляет новые данные
```sql
INSERT INTO table_name [(comma_separated_column_names)] VALUES (comma_separated_values);
```

3. `UPDATE` – изменяет (обновляет) существующие данные
```sql
UPDATE table_name
    SET update_assignment_comma_list
WHERE conditional_experssion;
```

4. `DELETE` – удаляет существующие данные (данные удаляются построчно – можно задавать условие, "откатывать" удаление)
```sql
DELETE
    FROM table_name
[WHERE conditional_expression];
```


#### 1.1 Структура запроса

Порядок написания запроса:

```sql
SELECT [DISTINCT] select_item_comma_list -- список столбцов для вывода
FROM table_reference_comma_list -- список таблиц
[WHERE conditional_expression] -- условия фильтрации, можно использовать AND / OR / NOT
[GROUP BY column_name_comma_list] -- условие группировки
[HAVING conditional_expression] -- условие фильтрации после группировки
[ORDER BY order_item_comma_list]; -- список полей, по которым сортируется вывод
```

#### 1.2 Порядок выполнения запроса

Порядок выполнения запроса отличается от порядка его записи, это необходимо помнить:

**FROM <span>&#8594;</span> WHERE <span>&#8594;</span> GROUP BY <span>&#8594;</span> HAVING <span>&#8594;</span> SELECT <span>&#8594;</span> ORDER BY**

