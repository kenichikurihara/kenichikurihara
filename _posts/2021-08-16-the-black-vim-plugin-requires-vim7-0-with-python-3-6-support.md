---
id: 588
title: 'The black.vim plugin requires vim7.0+ with Python 3.6 support.'
date: '2021-08-16T05:52:24+00:00'
author: 'Kenichi Kurihara'
layout: post
guid: 'https://www.kenichikurihara.com/?p=588'
permalink: /2021/08/16/the-black-vim-plugin-requires-vim7-0-with-python-3-6-support/
categories:
    - Uncategorized
---

MacのterminalのVimでPythonフォーマッターの[Black](https://github.com/psf/black)を使おうとしたら、タイトルのようなエラーが出たのであれこれしましたが、結局

```
$ brew install vim
```

で/opt/homebrew/bin/vimを使えば解決しました。/usr/bin/vimだとMacに標準のpython2.7が起動していた模様。そちらをどうやって直すかまでは調べてません。