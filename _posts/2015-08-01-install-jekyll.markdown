---
layout: post
title: Install Jekyll
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
date: 2015-08-01T10:17:54-04:00
---

В этой статье кратко опишу как поставить Ruby, а затем Jekyll. Установка ruby будет производиться через RVM — Ruby Version Manager. Программа для управления версиями Ruby.

Установка rvm:
{% highlight console %}
aptitude install curl nodejs
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby
{% endhighlight %}

Если в системе не хватает зависимостей, то rvm предложит автоматически их установить через пакетный менеджер:

{% highlight console %}
Updating system <user> password required for 'apt-get --quiet --yes update':
{% endhighlight %}

Выполнить в консоли:

{% highlight console %}
source /home/$USER/.rvm/scripts/rvm
/bin/bash --login
{% endhighlight %}

Для установки Jekyll установлю gem 'github-pages', который сам поставит Jekyll и все необходимое для его работы:

{% highlight console %}
gem install github-pages
gem install bundler
bundle install
{% endhighlight %}

Добавить в ~/.bashrc:

{% highlight console %}
# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source ~/.rvm/scripts/rvm > /dev/null 2>&1
{% endhighlight %}


Теперь Jekyll установлен и можно создать новый блог:
{% highlight console %}
jekyll new myblog
{% endhighlight %}


**Ссылки:**

<https://help.github.com/articles/using-jekyll-with-pages/>

