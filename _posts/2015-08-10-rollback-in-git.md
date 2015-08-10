---
layout: post
title: Rollback in Git
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
date: 2015-08-10T11:37:03-04:00
---

Нужно откатить файл на определенную дату.

Находим commit к которому нужно откатиться

```
$ git log 
```

Аналогично [копированию файлов из ветки в ветку](/how-copy-files-from-a-branch-to-another-using-git/) командой `git checkout` откатываем файл `foo`.

```
$ git checkout fcdd513bff0f37cffb6af1890e1a0aa187919d03 foo
```

