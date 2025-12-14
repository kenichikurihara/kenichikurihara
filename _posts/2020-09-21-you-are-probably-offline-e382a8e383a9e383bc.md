---
id: 457
title: '&#8220;you are probably offline&#8221; エラー'
date: '2020-09-21T11:54:11+00:00'
author: 'Kenichi Kurihara'
layout: post
guid: 'https://www.kenichikurihara.com/?p=457'
permalink: /2020/09/21/you-are-probably-offline-%e3%82%a8%e3%83%a9%e3%83%bc/
categories:
    - Uncategorized
---

WordPressのHTTPSの設定を終えたつもりでいたらうっかりWP\_SITEURLとWP\_HOMEのプロトコルをHTTPからHTTPSに書き換え忘れてました。/opt/bitnami/apps/wordpress/htdocs/wp-config.phpのWP\_SITEURLとWP\_HOMEを以下のように書き換えるべきです。

```
define('WP_SITEURL', 'https://' . $_SERVER['HTTP_HOST'] . '/');
define('WP_HOME', 'https://' . $_SERVER['HTTP_HOST'] . '/');
```

この書き換えを忘れている間、ブログポストの編集をしようとすると”you are probably offline”というエラーが出ていました。最初はなんでそんなエラーが起きるのかさっぱり分かりませんでしたが、同じエラーの人を探してるとWP\_SITEURLとWP\_HOMEのことを書いている人がいたので、参考にさせてもらいました。