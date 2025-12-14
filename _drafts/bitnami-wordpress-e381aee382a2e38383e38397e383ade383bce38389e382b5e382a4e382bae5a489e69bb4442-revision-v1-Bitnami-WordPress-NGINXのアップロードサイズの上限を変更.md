---
id: 455
title: 'Bitnami WordPress + NGINXのアップロードサイズの上限を変更'
date: '2020-09-19T13:46:31+00:00'
author: 'Kenichi Kurihara'
layout: revision
guid: 'http://www.kenichikurihara.com/2020/09/19/442-revision-v1/'
permalink: '/?p=455'
---

All-in-one WP Migrationのimportするためにアップロードサイズの最大サイズがひっかかったので、設定ファイルをいじった。私が使っているのはBitnamiのWordPress NGINXのパッケージなので対応する公式ドキュメントは以下のもの。

<https://docs.bitnami.com/bch/apps/wordpress-pro/administration/increase-upload-limit-php/>

*/opt/bitnami/php/etc/php.ini* を以下のように変更

> `; Maximum size of POST data that PHP will accept. `
> 
> `post_max_size = 16M`  
> `; Maximum allowed size for uploaded files.`
> 
> ` upload_max_filesize = 16M`

*/opt/bitnami/nginx/conf/nginx.conf* を以下のように変更

> `http {`
> 
> ` ...`
> 
> `client_max_body_size 16M;`
> 
> ` ...`

サーバースタックを再起動

> `sudo /opt/bitnami/ctlscript.sh restart`