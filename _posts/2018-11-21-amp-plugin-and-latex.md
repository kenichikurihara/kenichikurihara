---
id: 230
title: 'AMP Plugin and Latex'
date: '2018-11-21T09:59:25+00:00'
author: 'Kenichi Kurihara'
layout: post
guid: 'https://www.kenichikurihara.com/?p=230'
permalink: /2018/11/21/amp-plugin-and-latex/
amp_status:
    - enabled
    - enabled
categories:
    - Uncategorized
---

It seems AMP plugin shows raw Latex expression. For example, I have this [page]({% post_url 2018-06-09-marginalizing-out-normal-wishart-prior-of-multivariate-normal-distribution-for-bayesian-inference %}) which uses Latex as of now. The latest AMP plugin is [version 1.0-RC2](https://github.com/Automattic/amp-wp/releases). Really hoping it will be fixed :)

Update on Dec 10, 2018 AMP plugin reached 1.0! However, the Latex problem didn't fix. Instead, I found [WP QuickLatex plugin](https://wordpress.org/plugins/wp-quicklatex/) fixes the problem.

Update on Dec 18, 2020, WP QuickLatex plugin creates AMP errors (it is possible that I misused the plugin), I started using AMP MathML, the native MathML for AMP, instead.