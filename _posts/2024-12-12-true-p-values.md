
---
layout: single
title: "Taleb Paper on P-Hacking"
date: 2024-12-12
use_math: true
published: false
categories: blog
tags:
  - Publication Bias
  - Meta-Analysis


---
I'm sure Taleb has forgotten more about probablity than I will ever know, but I find I don't agree with the conclusions of his paper on p-hacking.


Summary

The paper argues that the commonly used thresholds for significance, called \alpha, are too high and therefore over-reject the null. He argues that they over-reject because of the extreme skewness and variability of the p-value distribution. What this means is that there are too many false-positives, or type I errors, in the scientific literature. 

The arument rests

$ \[
\frac{1}{m} \sum_{i=1}^m p_i \xrightarrow{P} p_s,
\] $

where $\( \xrightarrow{P} \)$ denotes **convergence in probability**.


My thoughts


Under the null model, the test statistic has a known distribution. 

A p-value is the result of evaluating the cdf for a particular test statistic under that distribution. It is 1 - F(T). Pr(T <t) is 1 - F(T).
