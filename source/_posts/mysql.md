---
title: MySQL
date: 2024-12-30 15:57:14
tags:
---

# 1 Getting started with MySQL

## 1.1 What is MySQL?

MySQL is a robust database management system designed for managing relational databases. It is open-source software supported by Oracle.

> MySQL got its name from the daughter of one of its co-founders, **Monty Widenius**, whose name is My. 
> Combining ‘My’ with ‘SQL,’ we get MySQL.

## 1.2 Install MySQL

# 2 Manage Databases

## 2.1 Select a database 

When we log in to a MySQL database server using the mysql client tool *without specifying a database name*, MySQL server will set the current database to `NULL`.

It means the current database is not set. If we issue a statement, MySQL will issue an error. For example: 

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



# 3 Manage Tables

# 4 Query Data

