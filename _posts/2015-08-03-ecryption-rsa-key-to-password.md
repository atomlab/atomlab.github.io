---
layout: post
title: Ecryption RSA Key to Password
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
date: 2015-08-03T15:10:29-04:00
---


Сгенерировать обычный RSA ключ и защитить паролем:

```
ssh-keygen -t rsa -N "MysuperPassword" -f ~/.ssh/id_rsa
```

Получаем ключ вида:

```
-----BEGIN RSA PRIVATE KEY-----
Proc-Type: 4,ENCRYPTED
DEK-Info: AES-128-CBC,43F643F4C5D3215A71821861F0452531

wXVZb2bkuTClO2zeLOO0nczNdZyRZ5pj7QLGvuBqYDbMm88bK9oVkeaEIxXd9OQ7
UmzQp7SkfU4iMR8uVfcjDwE//omS82xJa7tmjgKFE+Uj0CGId3+GpOMQmcubI06w
...
-----END RSA PRIVATE KEY-----
```

Расшифровать ключ и получить незащищенный RSA ключ:

```
openssl rsa -in ~/.ssh/id_rsa -passin "pass:MySuperPassword"
```

Получим ключ вида:

```
----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEA1vgUvxpcmYRxQTMrxY1rGoNUZn/HTra2ETn8H7uQ0x+hFTuJ
cV6Bh9aZLjRHrnXz3Krss0Zn9Je+mO8e2YPYlEhhxRK0fQDrWlvi/FsHo9fpJeNy
...
-----END RSA PRIVATE KEY-----
```

