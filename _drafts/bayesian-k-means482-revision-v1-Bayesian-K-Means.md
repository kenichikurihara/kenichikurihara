---
id: 483
title: 'Bayesian K-Means'
date: '2020-10-11T11:47:08+00:00'
author: 'Kenichi Kurihara'
layout: revision
guid: 'https://www.kenichikurihara.com/2020/10/11/482-revision-v1/'
permalink: '/?p=483'
---

Bayesian k-means is a clustering algorithm, which searches the optimal number of clusters.

Bayesian k-means belongs to a class of "maximization expectation" (ME) algorithm, which maximize over hidden variables but marginalize over parameters. ME algorithm allows Bayesian k-means to utilize efficient data structures and to select the optimal model structure.

How to Use

\* This progam requires Matlab.

Run Matlab.

cd where you un-archived the source.

Run bkm\_sm or bkm\_bu.

bkm\_sm and bkm\_bu are top-down and bottom-up Bayesian k-means algorithms respectively.

e.g.

```
>> k = bkm_sm(DATA)
```

```
>> [z,k] = bkm_bu(DATA) 
```

where DATA is a DxN array where D is the dimension and N is the #datapoints.

k is an expected number of clusters.

z is a matrix which is used as an argument of `dendrogram'.

You can also run them with an option 0 like

```
>> bkm_sm(DATA,0)
```

```
>> bkm_bu(DATA,0) 
```

In this case, bkm\_sm and bkm\_bu do not use either kd-trees or conga-lines. Currently, bkm\_bu(DATA,0) does not return a valid z. Use bkm\_bu(DATA,1) instead.

## [](https://sites.google.com/site/kenichikurihara/academic-software/bayesian-k-means#h.p_ID_68)Download

### [](https://sites.google.com/site/kenichikurihara/academic-software/bayesian-k-means#h.p_ID_70)License

This software is distributed under the BSD license.

Copyright (C) 2005 Kenichi Kurihara

### [](https://sites.google.com/site/kenichikurihara/academic-software/bayesian-k-means#h.p_ID_76)Source

[](https://sites.google.com/site/kenichikurihara/academic-software/bayesian-k-means#h.p_ID_78)[Bayesian k-means](https://drive.google.com/file/d/0B-o7me_LbZs7MFVFMlRlalplbnc/view?usp=sharing) : 10/25 2005

## [](https://sites.google.com/site/kenichikurihara/academic-software/bayesian-k-means#h.p_ID_80)References

Max Welling and Kenichi Kurihara, Bayesian K-Means as a "Maximization-Expectation" Algorithm, short version accepted in SIAM conference on Data Mining SDM06 , 2005.

## Acknowledgement

This material is based upon work supported by the National Science Foundation under Grant No. 0447903. Any opinions, findings and conclusions or recomendations expressed in this material are those of the author(s) and do not necessarily reflect the views of the National Science Foundation (NSF).