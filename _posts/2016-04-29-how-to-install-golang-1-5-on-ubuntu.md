---
layout: post
title: How to Install GoLang 1.5 on Ubuntu
modified:
categories:
description:
tags: [golang]
image:
  feature:
  credit:
  creditlink:
comments: false
share:
date: 2016-04-29T04:00:56-04:00
---

Check what the latest version are from GoLang:

* [Golang Downloads](https://golang.org/dl/)

Download and install (update the version to the latest):

```
wget https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.5.linux-amd64.tar.gz
```

Add /usr/local/lib/go/bin to the PATH environment variable. You can do this by adding this line to your /etc/.profile (for a system-wide installation) or $HOME/.profile:

```
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$PATH
```

To remove an older version of Golang:

```
sudo rm -rf /usr/local/go
```

** Links **

* [How to Install GoLang 1.5 on Ubuntu](http://munchpress.com/install-golang-1-5-on-ubuntu/)
