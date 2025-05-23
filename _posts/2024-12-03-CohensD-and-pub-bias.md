---
layout: single
title: "Cohen's d and Publication Bias Methods Don't Mix (Sometimes)"
use_math: true
date: 2024-12-03
published: true
categories: blog
tags:
  - Publication Bias
  - Meta-Analysis
---

Cohen's $d$ is commonly used as the standardized effect size in meta-analysis. Meta-analyses now also tend to include tests of publication bias. Both of these are fine on their own, but when you mix Cohen's $d$ and publication bias methods, you may run into problems.  

This is because many publication bias techniques look at whether there is a correlation between the standard error and the effect size. If there is, they conclude that publication bias is present. However, this approach doesn't work well with Cohen's $d$.

Cohen's $d$ is the mean difference standardized by the pooled standard deviation:

\$
d = \frac{\bar{X}_1 - \bar{X}_2}{s}
\$

And this is how the standard error of $d$ is estimated:

\$
SE_d = \sqrt{\frac{n_1 + n_2}{n_1 n_2} + \frac{d^2}{2(n_1 + n_2)}}
\$

Notice that $d$ is included in the formula for its own standard error. This means the two are correlated **by construction**!  

If you are looking for a correlation between the errors and the effect sizes, then it's pretty likely you will find one if you are using Cohen's $d$. In such cases, it's better to use an alternative, like the [TESS](https://onlinelibrary.wiley.com/doi/abs/10.1002/jrsm.1512) approach.


