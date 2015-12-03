---
layout: post
title: Xargs with multiple arguments
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
date: 2015-12-03T05:13:06-05:00
---

**Example 1**
```
echo argument1 argument2 argument3 | xargs -l bash -c 'echo this is first:$0 second:$1 third:$2' | xargs
```

Output
```
this is first:argument1 second:argument2 third:argument3
```
