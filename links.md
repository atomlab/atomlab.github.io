---
layout: page
title:
date: 2015-08-11T08:23:24-04:00
modified:
description:
image:
  feature:
  credit:
  creditlink:
share:
comments: false
---


**Инструменты для сбора метрик с сервера**

[Brubeck](http://habrahabr.ru/post/260971/) - быстрый, statsd-совместимый агрегатор метрик от GitHub.

[Statsite](https://github.com/armon/statsite) - Statsite is a metrics aggregation server. Statsite is based heavily on Etsy's StatsD https://github.com/etsy/statsd, and is wire compatible.

[go-carbon](https://github.com/lomik/go-carbon) - Golang implementation of Graphite/Carbon server with classic architecture: Agent -> Cache -> Persister.

[statsdaemon](https://github.com/vimeo/statsdaemon) - Metrics aggregation daemon like statsd, in Go and with a bunch of extra features. (Based on code from Bitly's statsdaemon)

[StatsD](https://github.com/etsy/statsd) - A network daemon that runs on the Node.js platform and listens for statistics, like counters and timers, sent over UDP or TCP and sends aggregates to one or more pluggable backend services (e.g., Graphite).


**Безопасность**

[Интересная презентация про пароли с DEF CON](http://www.securitylab.ru/blog/personal/itsec/148265.php)

[Как не надо писать парольную политику](http://www.itsec.pro/2014/01/blog-post_23.html)


**System**

[Сobbler](https://cobbler.github.io/) – сервер сетевой установки для Linux, обеспечивающий быстрое построение как необходимой среды развертывания и управления процессом инсталляции ОС на новые компьютеры или виртуальные машины (Xen, qemu, KVM или VMware Server), так и последующей переустановки систем. Причем от администратора скрыты особенности работы виртуальных машин. Написан Сobbler на Python и является связкой для некоторых стандартных для таких случаев компонентов PXE, TFTP, DHCP и других. Он упрощает администратору подготовку среды бездисковой загрузки, загрузку образов и поддержание нескольких конфигураций. Управление осуществляется при помощи консольной утилиты cobbler или удобного веб-интерфейса. При переустановке системы может быть использована PXE-загрузка, кроме этого GRUB перенастраивается на запуск среды установки. Предусмотрено создание подготовленного ISO-образа для локальной установки и переустановки системы. При этом Сobbler берет на себя всю нагрузку по настройке TFTP, DHCP, DNS, зеркалированию репозитариев.

**Internet**

[Обзор лучших репозиториев Github за неделю (xakep.ru)](https://goo.gl/1z81Z5)
