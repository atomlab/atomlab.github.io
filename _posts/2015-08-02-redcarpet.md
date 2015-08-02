---
layout: post
title: Redcarpet + Jekyll
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
date: 2015-08-02T06:16:22-04:00
---

Redcarpet - библиотека Ruby для Markdown. Позволяет использовать в Jekyll более легкий синтаксис.

Было:

{% highlight text %}

{% raw %}
{% highlight python %}
print "Hello, world!"
{% endhighlight %}
{% endraw %}

{% endhighlight %}

Стало возможным:

{% highlight text %}

{% raw %}
```python
print "Hello, world!"
```
{% endraw %}

{% endhighlight %}

**Ссылки**

<https://gist.github.com/danasilver/8121699>
