---
layout: page
title: "Jekyll Plugin Generators"
group: projects
description: ""
---
{% include JB/setup %}

# Jekyll Plugins

The Jekyll plugin system hooks allow you to create custom generated content specific to your site. You can run custom code for your site without having to modify the Jekyll source itself.

In general, plugins you make will fall into one of three categories:

* Generators
* Converters
* Tags

## Generators

You can create a generator when you need Jekyll to create additional content based on your own rules. For example, a generator might look like this:

<http://github.com/mojombo/jekyll/wiki/Plugins>

In this example, our generator will create a series of files under the `categories` directory for each category, listing the posts in each category using the `category_index.html` layout.

Generators are only required to implement one method:

1. *generate*: string output of the content being generated


## Install Plugin

Installing a plugin

In your site source root, make a \_plugins directory. Place your plugins here. Any file ending in \*.rb inside this directory will be required when Jekyll generates your site (unless the configuration option Safe is set).


