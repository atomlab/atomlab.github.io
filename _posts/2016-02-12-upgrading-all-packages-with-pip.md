---
layout: post
title: Upgrading All Packages With Pip
modified:
categories:
description:
tags: [python]
image:
  feature:
  credit:
  creditlink:
comments: false
share:
date: 2016-02-12T09:22:20-05:00
---

``` python
import pip
from subprocess import call

for dist in pip.get_installed_distributions():
    call("pip install --upgrade " + dist.project_name, shell=True)
```
