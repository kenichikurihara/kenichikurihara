---
id: 164
title: 'Marginalizing out Normal-Wishart Prior of multivariate Normal distribution for Bayesian inference'
date: '2018-06-09T03:27:16+00:00'
author: 'Kenichi Kurihara'
layout: post
guid: 'http://www.kenichikurihara.com/?p=164'
permalink: /2018/06/09/marginalizing-out-normal-wishart-prior-of-multivariate-normal-distribution-for-bayesian-inference/
categories:
    - Uncategorized
---

I found my old notes, and writing this post based on the notes for record.

The goal of this particular note is to marginalize out the parameters of multivariate Normal distribution using Normal-Wishart conjugate prior. This is useful for Bayesian inference for Gaussian distribution.

First of all, let me derive the joint distribution of observation as follows,

<amp-mathml data-formula="\begin{aligned}
&Prob(\{x_n\}_{n=1}^N,\mu,\Omega|\mu_0, a, B, \xi_0)
\\
&= \left\{\prod_{n=1}^N N(x_n|\mu,\Omega^{-1})\right\} N(\mu|\mu_0, \xi \Omega^{-1}) W(\Omega|a, B) \ \ &(1)
\\
&=
N\left(\mu \middle| \frac{N\bar{x} + \xi\mu_0}{N+\xi}, (N+\xi)\Omega^{-1} \right)
W(\Omega|a, B)
\\
& \cdot (2\pi)^{-\frac{ND}{2}}
\left( \frac{\xi_0}{N+\xi_0} \right )^{\frac{D}{2}}
\frac{Z(a',B')}{Z(a,B)}
&(2)
\end{aligned}" layout="container"></amp-mathml>where D is the number of dimensions and Z is the partition function of Wishart distribution, i.e.,

<amp-mathml data-formula="\begin{aligned}
Z(a,B) &= 2^{\frac{aD}{2}} \Gamma_D(a/2) |B|^{-a/2}
\\
\bar{x} &= \frac{1}{N} \Sigma_{n=1}^N x_n \\
S &= \Sigma_{n=1}^N (x_n - \bar{x})(x_n - \bar{x})^T \\
a' &= a + N \\
B' &= B + \frac{N\xi}{N+\xi} (\mu_0 -\bar{x})(\mu_0 - \bar{x})^T + S
\end{aligned}" layout="container"></amp-mathml>The marginal distribution, by marginalizing out the mu and omega, is

<amp-mathml data-formula="\begin{aligned}
&Prob(\{x_n\}_{n=1}^N|\mu_0, a, B, \xi_0)
\\
&= \int d\mu \ d\Omega \ Prob(\{x_n\}_{n=1}^N,\mu,\Omega|\mu_0, a, B, \xi_0)
\\
&=
(2\pi)^{-\frac{ND}{2}}
\left( \frac{\xi_0}{N+\xi_0} \right )^{\frac{D}{2}}
\frac{Z(a',B')}{Z(a,B)}
\end{aligned}" layout="container"></amp-mathml>I have omitted the detail of the derivation of (2) from (1). But, the following equations are useful to derive (2) from (1)

<amp-mathml data-formula="\begin{aligned}
&\Sigma(x_n - \mu) \Omega (x_n - \mu) =
Trace\left(\Omega \Sigma (x_n - \mu)(x_n - \mu)^T \right)
\\
&\Sigma (x_n - \mu) (x_n - \mu)^T = S + N(\bar{x} - \mu)(\bar{x} - \mu)^T
\\
&N(\mu - \bar{x})(\mu - \bar{x})^T
+ \xi(\mu - \mu_0) (\mu - \mu_0)^T
\\
&= (N+\xi) \left( \mu - \frac{N\bar{x} - \xi\mu_0}{N + \xi_0} \right)
\left( \mu - \frac{N\bar{x} - \xi\mu_0}{N + \xi_0} \right)^T
\\
& + \frac{N\xi}{N + \xi}(\mu_0 - \bar{x})(\mu_0 - \bar{x})^T
\end{aligned}" layout="container"></amp-mathml>