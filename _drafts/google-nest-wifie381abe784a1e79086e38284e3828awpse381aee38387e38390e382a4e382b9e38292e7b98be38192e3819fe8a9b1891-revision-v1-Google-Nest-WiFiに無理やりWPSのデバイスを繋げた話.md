---
id: 899
title: 'Google Nest WiFiに無理やりWPSのデバイスを繋げた話'
date: '2023-07-21T11:14:40+00:00'
author: 'Kenichi Kurihara'
layout: revision
guid: 'https://kenichikurihara.com/?p=899'
permalink: '/?p=899'
---

うちに[WPS](https://ja.wikipedia.org/wiki/Wi-Fi_Protected_Setup)でしか繋がらないデバイスが来てしまいました。しかし、家のWiFiは[Google Nest WiFi](https://store.google.com/jp/product/nest_wifi)なので[WPSがありません](https://support.google.com/googlenest/answer/6309220?hl=ja)。仕方ないので、WPS付きの安いWiFiルーターを買って、きて無理やりつなげました。

まずは、下の図のように、新しいWiFiルーターのSSIDとパスワードを既存のGoogle Nest WiFiと同じに設定します。

<figure>![](/wp-content/uploads/2023/07/wifinew-1024x434.png)</figure>WPSでしか繋がらないデバイスをWPS対応ルーターに接続します。ここでWPS対応ルーターには下図のようにいなくなってもらうと、WPSデバイスはちゃんとGoogle Nest WiFiと繋がります。

<figure>![](/wp-content/uploads/2023/07/gwifionly-1024x465.png)</figure>めでたし、めでたし