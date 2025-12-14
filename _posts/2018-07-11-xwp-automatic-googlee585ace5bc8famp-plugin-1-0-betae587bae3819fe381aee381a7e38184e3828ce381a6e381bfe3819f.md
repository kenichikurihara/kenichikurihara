---
id: 201
title: 'XWP, Automatic, Google公式AMP plugin 1.0 beta出たのでいれてみた'
date: '2018-07-11T15:23:06+00:00'
author: 'Kenichi Kurihara'
layout: post
guid: 'http://www.kenichikurihara.com/?p=201'
permalink: /2018/07/11/xwp-automatic-google%e5%85%ac%e5%bc%8famp-plugin-1-0-beta%e5%87%ba%e3%81%9f%e3%81%ae%e3%81%a7%e3%81%84%e3%82%8c%e3%81%a6%e3%81%bf%e3%81%9f/
categories:
    - Blogging
    - Tech
---

Version 0.72のときからインストールしてたんですが、1.0 betaが出たので、早速いれてみました。 [リリースノート](https://make.xwp.co/2018/07/06/amp-plugin-release-v1-0-beta1/)と[AMP plugin 1.0 beta](https://github.com/Automattic/amp-wp/releases/download/1.0-beta1/amp.zip)0.72の時にAMPのエラーが出てたので以下を実行しました。 `sudo /opt/bitnami/apps/wordpress/bnconfig --disable_banner 1`私はWordPressを[GCP](https://cloud.google.com/compute/)に[Bitnamiのパッケージ](https://docs.bitnami.com/google/apps/wordpress/)を使って運用していて、BitnamiのバナーがAMP対応してませんでした。 ひょっとすると1.0 betaでは上記のコマンドは不要かもしれません。ちなみに上記のコマンドは[Stack Overflow](https://stackoverflow.com/questions/34744552/how-can-i-remove-bitnami-banner-on-wordpress-site)が教えてくれました。 Native AMPという実装を選んでいるので、すべてのページのcanonicalがAMPです。パット見、ちゃんと動いているようです。 <ins datetime="2018-07-12T04:55:54+00:00">追記\[7/12, 2018\]</ins>AMP用にGoogle Analyticsを設定する方法を書きます。WordPressのダッシュボードのAMP-&gt;Analyticsに行き、下記のスクリーンショットのように入力してください。 Typeのフィールドは自分のための名前なので何を記入してもいいです。JSON Configurationには以下のコードのUA-1234567-8を自分のグーグルアナリティクスのIDに置き換えて入力します。 `{"vars": {"account": "UA-1234567-8"},"triggers": {"trackPageview": {"on": "visible","request": "pageview"}}}`\[caption id="attachment\_207" align="alignnone" width="525"\]![グーグルアナリティクスの設定](https://www.kenichikurihara.com/wp-content/uploads/2018/07/hE41kRuCn3G-2-1024x353.png) グーグルアナリティクスの設定\[/caption\]