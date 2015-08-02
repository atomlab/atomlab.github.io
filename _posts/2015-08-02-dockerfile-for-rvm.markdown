---
layout: post
title: Dockerfile for RVM
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
date: 2015-08-02T04:54:02-04:00
---

{% highlight text %}

#Template Dockerfile for Ruby projects
FROM ubuntu:14.04

RUN apt-get update

## Default Packages
RUN apt-get install -y -q ruby1.9.1 ruby1.9.1-dev build-essential
RUN apt-get install -y nano wget links curl rsync bc git git-core apt-transport-https libxml2 libxml2-dev libcurl4-openssl-dev openssl sqlite3 libsqlite3-dev
RUN apt-get install -y gawk libreadline6-dev libyaml-dev autoconf libgdbm-dev libncurses5-dev automake libtool bison libffi-dev

## Ruby
RUN curl -L https://get.rvm.io | bash -s stable
#Set env just in case
ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.1.1"
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

## Nodejs engine is used in many projects (e.g. execjs)
RUN apt-get install -y nodejs npm
RUN ln -s  /usr/bin/nodejs  /usr/bin/node

{% endhighlight %}

**Ссылки**

https://gist.github.com/atomlab/af1bd2b0c7819d5ec317
