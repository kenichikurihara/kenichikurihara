---
id: 594
title: 'Variational Dirichlet Process  Gaussian Mixture Model'
date: '2021-11-10T13:16:44+00:00'
author: 'Kenichi Kurihara'
layout: revision
guid: 'https://www.kenichikurihara.com/?p=594'
permalink: '/?p=594'
---

## Description

This software implements several algorithms. (see References section below.)

[My PhD thesis](https://drive.google.com/file/d/0B-o7me_LbZs7RExXYlZXRGVwTEE/view?usp=sharing&resourcekey=0-AwruAK7UD2o_3mANhaHWzQ) uses similar notation for the parameters of the code. Please find Eq 3.11. You might find the thesis more useful when you read the code.

### [](https://sites.google.com/site/kenichikurihara/academic-software/variational-dirichlet-process-gaussian-mixture-model#h.p_ID_38)Algorithms

1. accelerated variational Dirichlet process Gaussian mixture model
2. collapsed variational stick-breaking Dirichlet process Gaussian mixture model
3. variational Gaussian mixture model with a collapsed Dirichlet prior.
4. variational Dirichlet process Gaussian mixture model by Blei and Jordan.

Note more algorithms are actually available. They are specified by options.

### [](https://sites.google.com/site/kenichikurihara/academic-software/variational-dirichlet-process-gaussian-mixture-model#h.p_ID_50)Usage

This software requires Matlab.

The usage is like,

```
>> result = vdpgm(X, opts);
```

The first argument is data. Each data point is a column vector of X.

The second argument opts is the option of this program which determines an algorithm and hyperparameters. You can set opts as you want, or basic option generators are also available.

```
>> opts = mkopts_avdp; % for the algorithm 1
```

```
>> opts = mkopts_csb(10); % for the algorithm 2 with T=10 
```

```
>> opts = mkopts_cdp(10); % for the algorithm 3 with K=10 
```

```
>> opts = mkopts_bj(10); % for the algorithm 4 with T=10 
```

opts accepts many options. Some options are exclusive.

### [](https://sites.google.com/site/kenichikurihara/academic-software/variational-dirichlet-process-gaussian-mixture-model#h.p_ID_72)Posterior Assignment Probability

The output result is a structure containing parameters for posteriors.

Maybe, the most useful result is result.q\_of\_z which is the posterior probability of assignments. q\_of\_z is a N by K (or T) matrix s.t. sum\_c q\_of\_z(i,c) = 1 for any i.q\_of\_z is available only when opts.get\_q\_of\_z is set to 1.

Predictive Density

Let Test is a test data set (a D by M matrix; M test points). The following commands give the predctive density at each data point in Test.

```
>> opts.get_q_of_z = 1;
```

```
>> results = vdpgm(X, opts);
```

```
>> results.test_data = Test;
```

```
>> results_predictive = vdpgm(X, results);
```

results\_predictive.predictive\_posterior will be a 1 by M matrix whereresults\_predictive.predictive\_posterior(i) is a log predictive density of data pointTest(:,i).

### [](https://sites.google.com/site/kenichikurihara/academic-software/variational-dirichlet-process-gaussian-mixture-model#h.p_ID_92)Weighted Leaning

Let Test is a test data set (a D by M matrix; M test points). The following commands give the predctive density at each data point in Test.

```
>> opts.get_q_of_z = 1;
```

```
>> results = vdpgm(X, opts);
```

```
>> results.test_data = Test;
```

```
>> results_predictive = vdpgm(X, results);
```

results\_predictive.predictive\_posterior will be a 1 by M matrix whereresults\_predictive.predictive\_posterior(i) is a log predictive density of data pointTest(:,i).

## [](https://sites.google.com/site/kenichikurihara/academic-software/variational-dirichlet-process-gaussian-mixture-model#h.p_ID_106)Download

### [](https://sites.google.com/site/kenichikurihara/academic-software/variational-dirichlet-process-gaussian-mixture-model#h.p_ID_108)License

This software is distributed under the BSD license.

Copyright (C) 2007-2008 Kenichi Kurihara

### [](https://sites.google.com/site/kenichikurihara/academic-software/variational-dirichlet-process-gaussian-mixture-model#h.p_ID_114)Source

[vdpgm.tar.gz](https://drive.google.com/file/d/0B-o7me_LbZs7LXN1MzV0TzVlODQ/view?usp=sharing&resourcekey=0-3j0qPWX5KFeiSZjRwwcbsA)

### [](https://sites.google.com/site/kenichikurihara/academic-software/variational-dirichlet-process-gaussian-mixture-model#h.p_ID_118)ChangeLog

- June. 2 2010: Fixed a bug in mk\_log\_lambda(). Thank Dan for finding the bug.
- Mar. 24 2010: Fixed a bug in the predictive distribution computation. Thank Antti for the patch.
- Jul. 4 2008 : add a function for the predictive density.
- Aug. 24 2007 : kd-tree code had a bug; fixed.
- Apr. 20 2007 : The previous package did not contain "power\_method.m".

## [](https://sites.google.com/site/kenichikurihara/academic-software/variational-dirichlet-process-gaussian-mixture-model#h.p_ID_130)References

Kenichi Kurihara, Structure Learning by Bayesian Inference, Jan, 2008 [PDF](https://drive.google.com/file/d/0B-o7me_LbZs7RExXYlZXRGVwTEE/view?usp=sharing), Supervisor Taisuke Sato

Kenichi Kurihara, Max Welling and Yee Whye Teh, Collapsed Variational Dirichlet Process Mixture Models, the Twentieth International Joint Conference on Artificial Intelligence (IJCAI 2007).PDF

Kenichi Kurihara, Max Welling and Nikos Vlassis, Accelerated Variational Dirichlet Mixture Models, Advances in Neural Information Processing Systems 19 (NIPS 2006). PDF

David M. Blei and Michael I. Jordan, Variational Inference for Dirichlet Process Mixtures, Bayesian Analysis, Vol.1, No.1, 2005.