---
layout: post
title: Настройка логирования в Python
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
date: 2015-12-11T08:05:53-05:00
---

Для логирования в состав Python входит модуль `logging`. Пример использования.
В файл пишутся сообщения уровня DEBUG и выше. В консоль выводится уровень INFO и выше.

```python
import logging

# create logger with 'spam_application'
logger = logging.getLogger()
logger.setLevel(logging.DEBUG)
# create file handler which logs even debug messages
logfile = logging.FileHandler('example.log')
logfile.setLevel(logging.DEBUG)
logfile.setFormatter(logging.Formatter("%(asctime)s - %(levelname)s - %(message)s",
                                        datefmt='[%Y-%m-%d - %H:%M:%S]'))
# create console handler with a higher log level
console = logging.StreamHandler()
console.setLevel(logging.INFO)
console.setFormatter(logging.Formatter('[%(levelname)s] %(message)s'))
# add the handlers to the logger
logger.addHandler(logfile)
logger.addHandler(console)

logger.info('Test INFO message')
logget.debug('Test DEBUG message')
```

**Ссылки:**

- [PEP 282 -- A Logging System!](https://www.python.org/dev/peps/pep-0282/)
- [Logging Cookbook](https://docs.python.org/2/howto/logging-cookbook.html)
- [Logging facility for Python](https://docs.python.org/2/library/logging.html#logging.Logger.setLevel)
