---
id: 458
title: '&#8220;you are probably offline&#8221; wordpress cloudflare'
date: '2020-09-20T00:14:31+00:00'
author: 'Kenichi Kurihara'
layout: revision
guid: 'https://www.kenichikurihara.com/2020/09/20/457-revision-v1/'
permalink: '/?p=458'
---

```
define('WP_SITEURL', 'https://' . $_SERVER['HTTP_HOST'] . '/');
define('WP_HOME', 'https://' . $_SERVER['HTTP_HOST'] . '/');
```