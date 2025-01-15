---
title: About MySQL
date: 2024-12-30 15:57:00
categories:
- MySQL
tags:
---

# 1 Getting started with MySQL

## 1.1 What is MySQL?

&emsp;&emsp;MySQL is a robust database management system designed for managing relational databases. It is open-source software supported by Oracle.

> &emsp;&emsp;MySQL got its name from the daughter of one of its co-founders, **Monty Widenius**, whose name is My. 
> &emsp;&emsp;Combining ‘My’ with ‘SQL,’ we get MySQL.

## 1.2 Install MySQL (Binary Package)

&emsp;&emsp;Click <a href="" target="_blank">here</a> to download a binary package of MySQL.

## 1.2 Install MySQL (Source Code)

# 2 Manage Databases

## 2.1 Select a database 

&emsp;&emsp;When we log in to a MySQL database server using the mysql client tool *without specifying a database name*, MySQL server will set the current database to `NULL`.

It means the current database is not set. 

If we issue a statement, MySQL will issue an error. For example: 

```sql
SELECT * FROM t;
```

Error:

```
ERROR 1046 (3D000): No database selected
```

To select a database to work with, we use the `USE` statement.

```sql
USE classicmodels;
```

If the following message is shown, it means that we have changed the database to **classicmodels** successfully:

```
Database changed
```

## 2.2 Create a database

To create a new database in MySQL, we use the `CREATE DATABASE` statement.

```sql
CREATE DATABASE [IF NOT EXISTS] database_name
    [CHARACTER SET charset_name]
    [COLLATE collation_name];
```

For example:

```sql
CREATE DATABASE test_db
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';
```

## 2.3 Drop a database

```sql

```

# 3 Manage Tables

## 3.1 Create a table

```sql
CREATE TABLE [IF NOT EXISTS] table_name(
    column1 data_type [constraints] [COMMENT 'comment_content_1'],
    column2 data_type [constraints] [COMMENT 'comment_content_2'],
    ...
) ENGINE=storage_engine;
```

In this syntax:

- `table_name`: the name of the table that we want to create.
- `column1`, `column2`, etc.: the names of the columns in the table.
- `datatype`: the data type of each column such as `INT`, `VARCHAR`, `DATE`, etc.
- `constraints`: These are optional constraints such as `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, and `FOREIGN KEY`.
- `COMMENT 'comment_content'`: 

&emsp;&emsp;In MySQL, each table has a storage engine such as **InnoDB** or **MyISAM**. The `ENGINE` clause allows us to specify the storage engine of the table.

If we don’t explicitly specify a storage engine, MySQL will use the default storage engine which is InnoDB.

# 4 Query Data

