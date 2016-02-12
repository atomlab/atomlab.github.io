---
layout: post
title: Git. Hide Untracked Files
modified:
categories:
description:
tags: [git]
image:
  feature:
  credit:
  creditlink:
comments: false
share:
date: 2016-02-12T04:25:07-05:00
---

В командной строке

```
git status -u no
```

Добавить в конфиг `.git/config`

```
[status]
    showUntrackedFiles=no

```



