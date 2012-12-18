---
layout: page
title: "Jekyll Plugin Directory Listing"
group: projects
description: ""
---
{% include JB/setup %}

#A Jekyll Directory Listing Plugin

So I need a plugin that will print a list of pages under specific directory. It should worked like this:

    {% assign index_list = URL_PATTERN %}
    {% include nuomi/index_list %}

in index_list :

    {% url_filter page in site.pages url_pattern:. reversed sort_by:title%}
        <li><a href="{{ BASE_PATH }}{{page.url}}">{{page.title}}</a></li>
    {% endurl_filter %}

