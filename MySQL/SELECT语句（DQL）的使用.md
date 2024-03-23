# 一、基本的 SELECT 语句

> 语法格式

```sql
-- SELECT...
SELECT 1;  # 没有任何子句
SELECT 9/2;  #没有任何子句

-- SELECT...FROM...
SELECT * FROM departments;  # 选择所有列
SELECT department_id,location_id FROM departments;  # 选择指定的列

-- SELECT...FROM...WHERE...
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90 ;
```

> 列的别名

&emsp;&emsp;重命名一个列，紧跟列名（用一个空格隔开），也可以在列名和别名之间加入关键字 `AS`。别名可以（最好）使用双引号引起来，**以便在别名中包含空格或特殊的字符（空格等）并区分大小写。**

&emsp;&emsp;`AS` 可以省略，但是不建议这样做。

```sql
SELECT last_name AS name, commission_pct comm，salay * 12 “annual sal”
FROM employees;
```

> 去除重复行

&emsp;&emsp;将查询结果中的所有相同的记录，合并为一条记录。

```sql
-- 不去重
SELECT department_id
FROM employees;

-- 去重
SELECT DISTINCT department_id
FROM employees;
```

&emsp;&emsp;单独地使用，要求只能有一个列。

> 查询常数

```sql
SELECT '尚硅谷' as corporation, last_name FROM employees;
```

# 二、运算符

> 算术运算符

![[MySQL算术运算符.png]]

> 比较运算符

![[MySQL比较运算符1.png]]

* 比较结果为真，则返回 1，比较结果为假，则返回 0，其余情况返回 NULL。
* 数值与字符串进行比较，则字符串先进行隐式类型转化为数值，再进行比较（如果类型转换不成功，则看作数值 0 进行比较）。
* 字符串与字符串进行比较，
* “安全等于”运算符的“安全”在于，可以用来判断两侧是否都为 NULL（等于运算符只要有 NULL 参与比较，则结果一定是 NULL）。

![[MySQL比较运算符2.png]]

* BETWEEN 条件下界 AND 条件上界，条件下界一定小于等于条件上界。其表示范围包含边界。
* 字符串之间的比较，先比较各自第一位的 ASCII 码值，相等则比较各自第二位的 ASCII 码值......
* 模糊匹配规则：
	* 代表不确定个数的字符，_代表一个不确定的字符；
	* 可以使用\，将%和_转化为普通字符。

> 逻辑运算符

![[MySQL逻辑运算符.png]]

> 位运算符

![[MySQL位运算符.png]]

> 运算符优先级

![[MySQL运算符优先级.png]]

&emsp;&emsp;数字编号越大，优先级越高，优先级高的运算符先进行计算。

# 三、排序

&emsp;&emsp;如果**没有使用排序**，默认返回的数据，是按照当初添加数据的顺序显示的。

> 使用 ORDER BY 子句排序，从上往下

* ASC（ascend）：升序（默认，使用了排序，但是没有指定规则时）
* DESC（descend）：降序

> 单列排序

```sql
# 按照 salary 升序
SELECT emploee_id,last_name,salary
FROM employees
ORDER BY salary ASC;

# 按照 salary 降序
SELECT emploee_id,last_name,salary
FROM employees
ORDER BY salary DESC;

# 使用别名进行排序
SELECT emploee_id,last_name,salary,salary * 12 salary_sal
FROM employees
ORDER BY salary_sal;  # 正确执行 √

# 列的别名只能在 ORDER BY 中使用，不能在 WHERE 中使用
SELECT emploee_id,last_name,salary,salary * 12 salary_sal
FROM employees
WHERE salary_sal > 81600;  # 错误 ×

# WHERE 语句一定紧紧跟着 FROM 语句，ORDER BY 语句在最后
SELECT employee_id,salary
FROM employees
WHERE department_id IN (50.60.70)
ORDER BY department_id DESC;  # 排序依据的列，可以不是 SELECT 中所提及的
```

> 多级排序

```sql
# 二级排序：按照 department_id 降序排序，再按照 salary 升序排序
SELECT employee_id,salary,department_id
FROM employees
ORDER BY department_id DESC,salary ASC;

-- 同理，三级、四级排序...以此类推
```

# 四、分页


