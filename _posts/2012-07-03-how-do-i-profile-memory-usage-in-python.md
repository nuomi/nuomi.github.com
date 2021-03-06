--- 
layout: post
title: Python程序内存优化工具介绍
date: 2012-07-03 15:19:16
categories:
    - programming
tags:
    - python
    - programming
    - profile
    - howto
---
##Heapy

[Heapy](http://guppy-pe.sourceforge.net/#Heapy) is quite simple to use. At some point in your code, you have to write the following:

    from guppy import hpy
    h = hpy()
    print h.heap()

This gives you some output like this:

    Partition of a set of 132527 objects. Total size = 8301532 bytes.
    Index  Count   %     Size   % Cumulative  % Kind (class / dict of class)
    0  35144  27  2140412  26   2140412  26 str
    1  38397  29  1309020  16   3449432  42 tuple
    2    530   0   739856   9   4189288  50 dict (no owner)


##Dowser

[Dowser](http://pypi.python.org/pypi/memory_profiler) is ONLY for cherrypy.

You import memdebug, and call memdebug.start. That's all.

    # memdebug.py

    import cherrypy
    import dowser

    def start(port):
        cherrypy.tree.mount(dowser.Root())
        cherrypy.config.update({
            'environment': 'embedded',
            'server.socket_port': port
        })
        cherrypy.server.quickstart()
        cherrypy.engine.start(blocking=False)

##memory_profiler

[memory_profiler](http://pypi.python.org/pypi/memory_profiler) which is capable of printing line-by-line report of memory usage and works on Unix and Windows (needs psutil on this last one). Output is not very detailed but the goal is to give you an overview of where the code is consuming more memory and not a exhaustive analysis on allocated objects.

After decorating your function with @profile and running your code with the -m memory_profiler flag it will print a line-by-line report like this:

    Line #    Mem usage  Increment   Line Contents
    ==============================================
         3                           @profile
         4      5.97 MB    0.00 MB   def my_func():
         5     13.61 MB    7.64 MB       a = [1] * (10 ** 6)
         6    166.20 MB  152.59 MB       b = [2] * (2 * 10 ** 7)
         7     13.61 MB -152.59 MB       del b
         8     13.61 MB    0.00 MB       return a

The first column represents the line number of the code that has been profiled, the second column (Mem usage) the memory usage of the Python interpreter after that line has been executed. The third column (Increment) represents the difference in memory of the current line with respect to the last one. The last column (Line Contents) prints the code that has been profiled.

Q: How accurate are the results ?

A: This module gets the memory consumption by querying the operating system kernel about the ammount of memory the current process has allocated, which might be slightly different from the ammount of memory that is actually used by the Python interpreter. For this reason, the output is only an approximation, and might vary between runs.


