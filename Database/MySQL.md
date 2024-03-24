# 一、MySQL 中的 SQL 语言

> 通用语法

* SQL 语句可以单行或多行书写，以分号 `;` 结尾
* SQl 语句可以使用空格或缩进来增强语句的可读性
* MySQL 数据库的 SQL 语句不区分大小写，关键字建议使用大写
* 注释：

```sql
-- 单行注释
# 单行注释（MySQL 特有）
/*多行注释*/
```

> 数据类型

* 整型

|数据类型	  |所占空间 |有符号范围      |
|------------|---------|----------------|
|tinyint(m)  |1个字节  |范围(-128~127)|
|smallint(m) |2个字节  |范围(-32768~32767)|
|mediumint(m)|3个字节  |范围(-8388608~8388607)|
|int(m)      |4个字节  |范围(-2147483648~2147483647)|
|bigint(m)   |8个字节  |范围(+-9.22*10的18次方)|

* 浮点型

|数据类型    |含义                                       |
|-----------|-------------------------------------------|
|float(m,d) |单精度浮点型  8位精度(4字节)  m总个数，d小数位|
|double(m,d)|双精度浮点型  16位精度(8字节)  m总个数，d小数位|

* 定点数

&emsp;&emsp;浮点型在数据库中存放的是近似值，而定点类型在数据库中存放的是精确值。 

decimal(m,d)

* 字符串(char,varchar,_text)

|数据类型   |含义|
|----------|----------------------|
|char(n)   |固定长度，最多255个字符|
|varchar(n)|固定长度，最多65535个字符|
|tinytext  |可变长度，最多255个字符|
|text      |可变长度，最多65535个字符|
|mediumtext|可变长度，最多2的24次方-1个字符|
|longtext  |可变长度，最多2的32次方-1个字符|

## 1.基本的 SQL 语句

> DDL（Data Definition Language） 数据定义语言，用于定义数据对象（数据库、表、字段）

* 数据库操作

```sql
-- 查询所有数据库
SHOW DATABASES;

-- 查询当前数据库
SELECT DATABASE();

-- 创建
CREATE DATABASE [IF NOT EXISTS] 数据库名 [DEFAULT CHARSET 字符集] [COLLATE 排序规则];
-- 创建一个字符集为 UTF-8 的数据库 learning
CREATE DATABASE IF NOT EXISTS learning DEFAULT CHARSET utf8mb4;

-- 删除
DROP DATABASE [IF EXISTS] 数据库名;

-- 使用
USE 数据库名;
```

* 表操作

```sql
-- 查询当前数据库中所有的表
SHOW TABLES;

-- 查询表的结构
DESC 表名;

-- 查询指定表的建表语句
SHOW CREATE TABLE 表名;

-- 创建表
CREATE TABLE 表名(
    字段1 字段1类型 [COMMENT '字段1注释'],
    字段2 字段2类型 [COMMENT '字段2注释'],
    字段3 字段3类型 [COMMENT '字段3注释'],
    字段4 字段4类型 [COMMENT '字段4注释'],
    ...
    字段n 字段n类型 [COMMENT '字段n注释']
)[COMMENT '表注释'];

CREATE TABLE tb_user(
    id int COMMENT '用户id',
    name varchar(50) COMMENT '姓名',
    age int COMMENT '年龄',
    gender varchar(1) COMMENT '性别'
) COMMENT '用户表';
```

* 字段的操作

```sql

```

> DML（Data Manipulation Language） 数据管理语言，用来对数据库表中的数据进行增删改

```sql

```

> DQL（Data Query Language） 数据查询语言，用来查询数据库中表的记录

```sql

```

> DCL（Data Control Language） 数据控制语言，用来创建数据库用户、控制数据库的访问权限

```sql

```

## 2.函数

## 3.约束

## 4.多表查询

## 5.事务

# 二、MySQL 进阶应用

## 1.存储引擎

## 2.索引

## 3.SQL 优化

## 4.视图、存储过程和触发器

## 5.锁

## 6.InnoDB 核心

# 三、MySQL 运维

## 1.MySQL 在各个平台上的安装、配置和卸载

### 1）Windows 平台

### 2）Linux 平台

> 解压下载的 MySQL 二进制包，并将解压后的文件夹移动到 /opt 目录

```bash
tar -zxvf mysql-8.3.0-linux-glibc2.28-x86_64.tar.xz
mv mysql-8.3.0-linux-glibc2.28-x86_64 /opt
```

> 编写配置文件，放入到 mysql 的软件根目录

```config
[mysqld]
user=mysql
basedir=/opt/mysql-8.0.36-glibc2.28-x86_64
datadir=/opt/mysql-8.0.36-glibc2.28-x86_64/data
port=3306
pid-file=/opt/mysql-8.0.36-glibc2.28-x86_64/data/mysqld.pid
max_connections=200
max_connect_errors=10
character-set-server=utf8mb4
default-storage-engine=INNODB
default_authentication_plugin=mysql_native_password
# 大小写敏感
lower_case_table_names=0
group_concat_max_len=102400

[mysql]
default-character-set=utf8mb4

[client]
port=3306
default-character-set=utf8mb4
```

> 初始化 mysqld 服务

```bash

```

> 创建 mysqld 服务 /etc/systemd/system/mysqld.service

```
[Unit]
Description=Mysql8 Server
Documentation=man:mysqld(8)
Documentation=http://dev.mysql.com/doc/refman/en/using-systemd.html
After=network.target
After=syslog.target

[Service]
User=mysql
Group=mysql
PIDFile=/opt/mysql-8.0.36-glibc2.28-x86_64/data/mysqld.pid
#修改成mysql的启动文件及配置文件路径
ExecStart=/opt/mysql-8.0.36-glibc2.28-x86_64/bin/mysqld --defaults-file=/opt/mysql-8.0.36-glibc2.28-x86_64/my.cnf

[Install]
WantedBy=multi-user.target
```

 > 开启这个服务

```bash
systemctl start mysqld.service  #启动服务
systemctl enable mysqld.service  #开机自启动
```

### 3）MacOS 平台


## 2.日志

## 3.主从复制

## 4.分库分表

## 5.读写分离

