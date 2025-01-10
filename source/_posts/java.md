---
title: Java语言基础
date: 2024-12-30 14:16:47
tags:
---

# 1 Running the first Java application

# 2 Java language basics






The used method.

```java
private boolean testStringNumber(String strNum){
	try {
		int num = Integer.parseInt(strNum);
		return true;
	} catch (NumberFormatException e) {
		return false;
	}
}

//判断strNum是否为大于0的整数
private boolean testStringNumber(String strNum){
	try {
		int num = Integer.parseInt(strNum);
		return num > 0;
	} catch (NumberFormatException e) {
		return false;
	}
}
```
