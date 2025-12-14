---
id: 599
title: '[Mac][Bluetooth]「接続が拒否されました」エラー'
date: '2022-01-15T06:51:42+00:00'
author: 'Kenichi Kurihara'
layout: revision
guid: 'https://www.kenichikurihara.com/?p=599'
permalink: '/?p=599'
---

突然Bluetoothがつながらなりました。記事のタイトルのように「**接続が拒否されました**」とエラーがでてました。ちなみに、英語UIだと"Connection Rejected"となるようです。いろいろ調べたところ、[Bluetoothをリセットするコマンド](https://discussions.apple.com/thread/253381409)を発見して、実際それで接続できるようになりました。

```
sudo pkill bluetoothd
```

[PRAMリセット](https://support.apple.com/HT204063)や[SMCリセット](https://support.apple.com/HT201295)やBluetoothデバイスを登録し直したりいろいろしたんですが、どれもだめでしたが、上記のコマンドはうまくいきました。ひょっとすると、Bluetoothデバイスをたくさん登録しすぎて、設定がおかしくなってたのかもしれません。