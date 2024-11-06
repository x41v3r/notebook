# 1 Data Definition Statements

## 1.1 CREATE DATABASE Statement

```sql
CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name
    [create_option] ...

create_option: [DEFAULT] {
    CHARACTER SET [=] charset_name | 
    COLLATE [=] collation_name | 
    ENCRYPTION [=] {'Y' | 'N'}
}
```

`CREATE DATABASE` creates a database with the given name.

An error occurs if the database exists and we did not specify `IF NOT EXISTS`.

* The `CHARACTER SET` option specifies the default database character set. The `COLLATE` option specifies the default database collation. 
* The `ENCRYPTION` option, introduced in MySQL 8.0.16, defines the default database encryption, which is inherited by tables created in the database. 

> A database in MySQL is implemented as a directory containing files that correspond to tables in the database. Because there are no tables in a database when it is initially created, the `CREATE DATABASE` statement creates only a directory under the MySQL data directory.

Notes:

1. Creating a database directory by manually creating a directory under the data directory is unsupported in MySQL 8.0.
2. MySQL has no limit on the number of databases, while the underlying file system may have a limit on the number of directories.

## 1.2 CREATE EVENT Statement

## 1.3 CREATE FUNCTION Statement

```sql
CREATE [DEFINER = user] FUNCTION [IF NOT EXISTS] sp_name ([func_parameter[,...]])
    RETURNS type
    [characteristic ...] routine_body
```







## ALTER DATABASE Statement

```sql
ALTER {DATABASE | SCHEMA}  [db_name]
    alter_option ...
    
alter_option: {
    [DEFAULT] CHARACTER SET [=] charset_name | [DEFAULT] COLLATE [=] collation_name | [DEFAULT] ENCRYPTION [=] {'Y' | 'N'} | READ ONLY [=] {DEFAULT | 0 | 1}
}
```

### 1.1.1 Character Set and Collation Options

&emsp;&emsp;The `CHARACTER SET` option changes the default database character set. The `COLLATE` option changes the default database collation.

```sql
```

### 1.1.2 Encryption Option



### 1.1.3 Read Only Option



