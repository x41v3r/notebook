---
title: MySQL CRUD
date: 2024-12-30 15:57:14
categories:
- MySQL
tags:
---

# 1 Manage Databases

## 1.1 Select a database 

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

## 1.2 Create a database

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

## 1.3 Drop a database

```sql

```

# 2 Manage Tables

## 2.1 Create a table

Create a table named `test_table`:

```sql
CREATE TABLE IF NOT EXISTS test_table(
	id int PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key ID',
	name varchar(100) NOT NULL COMMENT 'username',
	`password` varchar(100) NOT NULL COMMENT 'password',
	nick_name varchar(200) NOT NULL COMMENT 'nick name'
)
ENGINE=InnoDB  # Storage Engine
DEFAULT CHARSET=utf8mb4  # Character Set
COLLATE=utf8mb4_general_ci  # Collation
COMMENT 'Table for testing';  # Table Comment
```

&emsp;&emsp;In MySQL, each table has a storage engine such as **InnoDB** or **MyISAM**. The `ENGINE` clause allows us to specify the storage engine of the table.

InnoDB became the default storage engine starting with MySQL version 5.5. If we don’t explicitly specify a storage engine, MySQL will use the default storage engine which is InnoDB.

## 2.2 Rename a Table

```sql
RENAME TABLE table_name
TO new_table_name;
```

### 2.2.1 Renaming a table referenced by a view

# 3 Query Data



