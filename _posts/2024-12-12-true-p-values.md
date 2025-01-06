
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


### Summary

The paper argues that the commonly used thresholds for significance, called $\alpha$, are too high and therefore over-reject the null. That they over-reject because of the extreme skewness of the p-value distribution. What this means is that there are too many false-positives, or type I errors, in the scientific literature. 

He derives a distribution function for p-values[^1] that only depends on the median p-value and the sample size. He introduces what he calls "true" p-values which he defines as the expected value over multiple different samples (the true p-value $\( p_s \)$ converges in probability: $\frac{1}{m} \sum_{i=1}^m p_i \xrightarrow{P} p_s$). He shows that you could have this "true" or average p-value be greater than 0.05 and yet most individual p-values would be lower than 0.05. He calls this 0.05 "true" p-value borderline, as in on the border between significant and non-significant. Yet, he says, if teh "true" p-value is bordeline, and the vast majority of indvidual tests will reject the null then the test is not calibrated correctly. There are too many "false" rejections of the null. It is easy for reasearchers to p-hack by testing multiple subsamples until they get a statistically signifcant result. 


### My thoughts

What is my issue with this example? In short, if the average p-value is 0.05 then the <ins>**null model is false**</ins> and most tests correctly reject it. When the null **model** is correct, with all the assumptions that entails, then the p-value distribution will be uniform (or stochastically greater than uniform)[^2]. So basically they have a uniform distrubtion or are left skewed, like this:


For a (continuos) uniform distribution of p-values the me

Taleb correctly models p-values as random variables. He knows that the "true" p-values, the average p-value, is not actually the truye value 
Under the null model, the test statistic has a known distribution. With a **point** null the distribution of p-values will be uniform. 



[^1]: It is a piecewise pdf with the split at 0.5 median p-value. 
[^2]: See [Cassella and Berger](https://pages.stat.wisc.edu/~shao/stat610/Casella_Berger_Statistical_Inference.pdf) pages 397-398.
