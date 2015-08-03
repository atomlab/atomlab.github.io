---
layout: post
title: Find Duplicate Records in MySQL
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
date: 2015-08-03T14:15:35-04:00
---

**Example**

```
SELECT date FROM logs group by date having count(*) >= 2
```

**Ссылки**

<http://stackoverflow.com/questions/854128/find-duplicate-records-in-mysql>
