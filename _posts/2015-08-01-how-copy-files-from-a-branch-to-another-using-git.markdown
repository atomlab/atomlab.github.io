---
layout: post
title: Как в git скопировать файлы из одной ветки в другую?
modified:
categories:
description:
tags: []
image:
  feature:
  credit:
  creditlink:
comments:
share:
date: 2015-08-01T04:35:51-04:00
---

Нужно скопировать файл _foo_ из `master` в `gh-pages`.

{% highlight console %}
git checkout gh-pages
git checkout master foo
git commit -m 'Add file foo to gh-pages.
{% endhighlight %}

Соответственно для копипрования всей ветки

{% highlight console %}
git checkout master ./
{% endhighlight %}

**Ссылки:**

http://stackoverflow.com/questions/17416691/how-can-i-copy-files-from-a-branch-to-another-using-git
