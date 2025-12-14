---
id: 584
title: 'IIJmioひかりのIPv6 (IPoE)をGoogle Nest WiFiと使った話'
date: '2021-08-03T00:44:10+00:00'
author: 'Kenichi Kurihara'
layout: revision
guid: 'https://www.kenichikurihara.com/?p=584'
permalink: '/?p=584'
---

家で[IIJmioひかり](https://www.iijmio.jp/imh/)を使っています。[IPv6のオプション](https://www.iijmio.jp/imh/ipoe/)(IPv6 IPoE)が今無料で試せるので使ってみたので、まとめました。

結論

速度は速くなった。IPv6にもなったけど、Double-NatではIPv6にならなかった。

詳しい経緯

家ではGoogle WiFiを3台使っています（今はGoogle Nest WiFiという名前になりました）。3台でメッシュネットワークを作ることでWiFiの届かない場所をなくせます。残念ながらGoogle WiFiはIPoEを使えません。そこで、IPoEが使えるルーターを買うことにしました。

長くなるので簡単に書くと[NECの PA-WG2600HP3](https://www.aterm.jp/product/atermstation/product/navi/wg2600hp3.html) がおすすめです。もう一台、IO-Dataの WN-AX2033GR2 も試しましたが、PA-WG2600HP3 の方がかなり遅いです。速度は以下の通りです。

<figure class="wp-block-image size-large">![](/wp-content/uploads/2019/09/4oPX08rEsxS-839x1024.png)</figure>IPoEルーターには満足いったのですが、何をどうがんばってもGoogle WiFiにつなげたスマホなどがIPv6で通信できませんでした。ちなみに、以下のようなネットワークになってます。

光モデム -&gt; PA-WG2600HP3 -&gt; Google WiFi -&gt; スマホ

いろいろ調べてたらGoogle WiFiがIPv6を使えるためには64ビット未満のプレフィックスを貰う必要があり、IIJmioはひかり電話の契約なしだと64ビットのプレフィックスになることがわかりました。

> mioひかりのIPoEオプションで割り当てられるIPv6のプレフィックス長は、ひかり電話の契約がある場合/56、ひかり電話の契約のない場合は/64となります。
> 
> — IIJmio (@iijmio) [March 24, 2017](https://twitter.com/iijmio/status/845168762605101057?ref_src=twsrc%5Etfw)

 <script async="" charset="utf-8" src="https://platform.twitter.com/widgets.js"></script>ということで、Google WiFiはIPv6になりませんでしたが、速度は速くなったので満足です。