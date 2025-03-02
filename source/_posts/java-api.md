---
title: Java APIs
date: 2025-01-14 14:50:47
categories:
- Java
tags:
---

# 1 The Collections Framework

```java
Map<String, List<IndustryAsset>> industryNameMap = industryAssetList.stream().collect(Collectors.groupingBy(IndustryAsset::getName));
```


# 2 The Stream API

# 3 The Java I/O API


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

