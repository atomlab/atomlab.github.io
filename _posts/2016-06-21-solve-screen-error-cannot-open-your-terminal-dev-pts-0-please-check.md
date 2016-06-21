---
layout: post
title: Solve Screen Error Cannot Open Your Terminal /dev/pts/0 - Please Check
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
date: 2016-06-21T04:15:56-04:00
---

При попытке открытия терминала screen можно получить ошибку

```
Cannot open your terminal '/dev/pts/0' - please check.
```

Это бывает когда переключаешься в другого пользователя через `su <username>`.

Убрать ошибку можно выполнив команду


```
script /dev/null
```

**Links**

* [Solve screen error "Cannot open your terminal '/dev/pts/0' - please check"](http://makandracards.com/makandra/2533-solve-screen-error-cannot-open-your-terminal-dev-pts-0-please-check)


