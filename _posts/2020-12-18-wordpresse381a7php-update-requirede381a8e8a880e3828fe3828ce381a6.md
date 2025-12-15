---
id: 501
title: 'WordPressでPHP Update Requiredと言われて'
date: '2020-12-18T02:04:06+00:00'
author: 'Kenichi Kurihara'
layout: post
guid: 'https://www.kenichikurihara.com/?p=501'
permalink: /2020/12/18/wordpress%e3%81%a7php-update-required%e3%81%a8%e8%a8%80%e3%82%8f%e3%82%8c%e3%81%a6/
categories:
    - Uncategorized
---

<figure><img src="/wp-content/uploads/2020/12/phpupdate.png" alt="" /></figure>上記のような注意が出てました。PHPにセキュリティ問題があるから、PHPのバージョンをアップデートしなさいということです。

私のWordPressの環境はBitnamiのGCP向けのWordPressのパッケージです。残念ながら、[Bitnamiはパッケージの中のソフトウェアを個別にアップデートすることは公式にサポートしてません。](https://community.bitnami.com/t/is-there-a-way-to-update-php-and-apache-in-bitnami-community-amis-without-migrating/72617)

仕方ないので、GCPに一からBitnamiのWordPressをインストールしました。時間かかるので、できるだけ避けたい作業ですね。[All-in-One WP Migration](https://ja.wordpress.org/plugins/all-in-one-wp-migration/)とか使えば、コンテンツの移行は楽になるかと思います。私のサイトは個人ページなので、ダウンタイムとか気にしませんでしたが、ダウンタイムを避けたい、または最小限にしたい状況だと丁寧に仕事をしなくてはいけないので、より厄介になります。Bitnamiを利用する際の欠点かと思います。