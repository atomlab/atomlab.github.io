---
layout: post
title: Dpkg: Error Processing Package Libapache2-mpm-itk
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
date: 2016-04-06T11:07:21-04:00
---

При установке пакета libapache2-mpm-itk ошибка:

```
Setting up libapache2-mpm-itk (2.4.6-01-1) ...
dpkg: error processing package libapache2-mpm-itk (--configure):
 subprocess installed post-installation script returned error exit status 1
dpkg: dependency problems prevent configuration of apache2-mpm-itk:
 apache2-mpm-itk depends on libapache2-mpm-itk; however:
  Package libapache2-mpm-itk is not configured yet.

dpkg: error processing package apache2-mpm-itk (--configure):
 dependency problems - leaving unconfigured
Errors were encountered while processing:
 libapache2-mpm-itk
 apache2-mpm-itk
```

Диактивировать модуль mpm_event и повторить установку пакета

```
a2dismod mpm_event
```
