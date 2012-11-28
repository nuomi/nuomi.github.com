---
layout: page
title: "Android Source Code Explain"
group: android
description: ""
---
{% include JB/setup %}

#Gerrit

Google's source code review system.

Gerrit is a free, web-based team software code review tool that integrates with Git version control software. It has been developed at Google by Shawn Pearce (co-author of Git, founder of JGit) for the development of the Android project. As it is web based, software developers in a team can review each other's modifications on their source code using a web browser and approve or reject those changes.

Starting from a set of patches for Rietveld, also a software review tool, it became a fork and evolved into a separate project when ACL patches wouldn't be merged into Rietveld by its author, Guido van Rossum.[1]

Originally written in Python like Rietveld, it is now written in Java (Java EE Servlet) with SQL since version 2. Gerrit uses Google Web Toolkit to generate front-end JavaScript code from Java source.[2]
