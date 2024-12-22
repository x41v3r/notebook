# 1 Introduction to MySQL

# 2 CRUD (create, read, update, delete)

## 2.1 Querying data

### 2.1.1 SELECT

&emsp;&emsp;The `SELECT` statement is used to *select data from one or more tables*.

To write a `SELECT` statement in MySQL, this is the syntax:

```sql
SELECT select_list
FROM table_name;
```

In this syntax:

* First, specify one or more columns after the `SELECT` keyword (If the "select_list" has multiple columns, each column must be separated by a comma `,`);
* Second, specify the table from which to retrieve data after the `FROM` keyword.

&emsp;&emsp;When executing the `SELECT` statement, MySQL evaluates the `FROM` clause before the `SELECT` clause:

![mysql-select-from](./assets/mysql-select-from.png)

### 2.1.2 ORDER BY

&emsp;&emsp;To sort the rows in the result set, add the `ORDER BY` clause to the `SELECT` statement.

The following illustrates the syntax of the `ORDER BY` clause:

```sql
SELECT 
    select_list
FROM 
    table_name
ORDER BY 
   column1 [ASC|DESC], 
   column2 [ASC|DESC],
   ...;
```

The `ASC` stands for ascending and the `DESC` stands for descending. By default, the `ORDER BY` clause uses `ASC`.

&emsp;&emsp;To sort the result set by multiple columns, specify a comma-separated list of columns in the ORDER BY clause:

```sql
ORDER BY
    column1 ASC,
    column2 DESC;
```

In this case, the `ORDER BY` clause:

1. First, sort the result set by the values in the column1 in ascending order;
2. Then, sort the sorted result set by the values in the column2 in descending order. (Note that *the order of values in the column1 will not change in this step*, only the order of values in the column2 changes.)

When executing the `SELECT` statement with an `ORDER BY` clause, MySQL always evaluates the `ORDER BY` clause after the `FROM` and `SELECT` clauses:

![mysql-select-from-order-by](./assets/mysql-select-from-order-by.png)

### 2.1.3 WHERE

# 3 MySQL stored procedures

# 4 MySQL triggers

# 5 MySQL views

# 6 MySQL index



