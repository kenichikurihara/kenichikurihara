---
id: 498
title: 'AMP Plugin and Latex'
date: '2020-12-18T00:54:35+00:00'
author: 'Kenichi Kurihara'
layout: revision
guid: 'https://www.kenichikurihara.com/2020/12/18/230-revision-v1/'
permalink: '/?p=498'
---

It seems AMP plugin shows raw Latex expression. For example, I have this [page](http://www.kenichikurihara.com/2018/06/09/marginalizing-out-normal-wishart-prior-of-multivariate-normal-distribution-for-bayesian-inference/) which uses Latex as of now. The latest AMP plugin is [version 1.0-RC2](https://github.com/Automattic/amp-wp/releases). Really hoping it will be fixed :)

Update on Dec 10, 2018 AMP plugin reached 1.0! However, the Latex problem didn't fix. Instead, I found [WP QuickLatex plugin](https://wordpress.org/plugins/wp-quicklatex/) fixes the problem.

Update on Dec 18, 2020, WP QuickLatex plugin creates AMP errors (it is possible that I misused the plugin), I started using AMP MathML, the native MathML for AMP, instead.