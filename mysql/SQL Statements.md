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



