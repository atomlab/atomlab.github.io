Grep ip with use regex pattern
==============================

**Example1**::

    line='inet 192.168.2.13 netmask 0xffffff00 broadcast 192.168.2.256'
    
    echo "$line" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"
    
Results::
    
    192.168.2.13
    192.168.2.256

**Example2**::

    line='inet 192.168.0.255 netmask 0xffffff00 broadcast 192.168.2.256'
    
    echo "$line" | grep -oE "\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b"
    
Results:

::

    192.168.0.255

**Example3**::

    line='inet 192.168.0.255 netmask 0xffffff00 broadcast 192.168.2.256'
    
    echo "$line" | awk -v OFS="\n" '{ print $2, $NF }'

Results::

    192.168.0.255
    192.168.2.256

Ссылки:

* http://www.regular-expressions.info/wordboundaries.html
* http://stackoverflow.com/questions/11482951/extracting-ip-address-from-a-line-from-ifconfig-output-with-grep


.. author:: default
.. categories:: none
.. tags:: none
.. comments::
