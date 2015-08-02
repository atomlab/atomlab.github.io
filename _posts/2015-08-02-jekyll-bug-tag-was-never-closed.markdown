---
layout: post
title: Jekyll Bug. Tag Was Never Closed
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
date: 2015-08-02T05:20:02-04:00
---

При вставке блока кода, Jekyll по умолчанию не обрабатывает пустые строки. Когда Jekyll натыкается на пустую строку в блоге кода, он решает, что это последняя строка кода за которой должен стоять закрывающий тег `{% raw %}{% endhighlight %}{% endraw %}`.


**Пример**:

{% highlight python %}

{% raw %}
{% highlight python %}
def hello():
    str = "Hello World!"
    return str

print hello()
{% endhighlight %}
{% endraw %}

{% endhighlight %}

Как это понимает Jekyll

{% highlight python %}

{% raw %}
{% highlight python %}
def hello():
    str = "Hello World!"
    return str
{% endraw %}

{% endhighlight %}

При генерации сайта волучаем ошибку вида

{% highlight console %}
Liquid Exception: highlight tag was never closed in _posts/my-post.txt/#excerpt
{% endhighlight %}

Лайфхак при этой ситуации это добавить в `_config.yml` строчку:

{% highlight console %}
excerpt_separator: ""
{% endhighlight %}

**Ссылки**:

<https://github.com/jekyll/jekyll/pull/1386>

