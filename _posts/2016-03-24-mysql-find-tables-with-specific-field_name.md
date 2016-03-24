---
layout: post
title: Mysql. Find Tables With Specific Field_name
modified:
categories:
description:
tags: []
image:
  feature:
  credit:
  creditlink:
comments: false
share:
date: 2016-03-24T05:28:40-04:00
---

Нужно анйти все таблицы содержащие поля с определенным именем.

```
SELECT DISTINCT concat(TABLE_SCHEMA,'.',TABLE_NAME) FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME LIKE '%server%'
```

Вывод

```
+---------------------------------------------+
| concat(TABLE_SCHEMA,'.',TABLE_NAME)         |
+---------------------------------------------+
| database1.accounts                          |
| database2.servers                           |
+---------------------------------------------+
```
