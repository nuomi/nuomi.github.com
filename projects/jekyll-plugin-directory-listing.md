---
layout: page
title: "Jekyll Plugin Directory Listing"
group: projects
description: ""
---
{% include JB/setup %}

A Jekyll Directory Listing Plugin
========================

So I need a plugin that will print a list of pages under specific directory. It should worked like this:

    assign pages_list = site.pages
    assign dir = 'projects'

make the __pages_list__ helper recognize dir parameter

or the __dir__ parameter could work relatively:

    assign pages_list = site.pages
    assign dir = '.'



