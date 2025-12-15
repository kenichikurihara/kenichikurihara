---
id: 503
title: 'WordPressでPHP Update Requiredと言われて'
date: '2020-12-18T02:04:06+00:00'
author: 'Kenichi Kurihara'
layout: revision
guid: 'https://www.kenichikurihara.com/2020/12/18/501-revision-v1/'
permalink: '/?p=503'
---

<figure>![](/wp-content/uploads/2020/12/phpupdate.png)</figure>上記のような注意が出てました。PHPにセキュリティ問題があるから、PHPのバージョンをアップデートしなさいということです。

私のWordPressの環境はBitnamiのGCP向けのWordPressのパッケージです。残念ながら、[Bitnamiはパッケージの中のソフトウェアを個別にアップデートすることは公式にサポートしてません。](https://community.bitnami.com/t/is-there-a-way-to-update-php-and-apache-in-bitnami-community-amis-without-migrating/72617)

仕方ないので、GCPに一からBitnamiのWordPressをインストールしました。時間かかるので、できるだけ避けたい作業ですね。[All-in-One WP Migration](https://ja.wordpress.org/plugins/all-in-one-wp-migration/)とか使えば、コンテンツの移行は楽になるかと思います。私のサイトは個人ページなので、ダウンタイムとか気にしませんでしたが、ダウンタイムを避けたい、または最小限にしたい状況だと丁寧に仕事をしなくてはいけないので、より厄介になります。Bitnamiを利用する際の欠点かと思います。