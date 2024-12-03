---
layout: single
title: "How Much Should We Trust Publication Bias Detection Techniques?"
date: 2024-12-02
published: false
categories: blog
permalink: /home/blog/:title/
tags:
  - Publication Bias
  - Meta-Analysis
  - External Validity
---


"A meta-analyst should make informed decisions: Issues with Bayesian model-averaging meta-analyses" [paper](https://osf.io/preprints/metaarxiv/tm7dv)
A working paper from Rafael Román-Caballero and Miguel A. Vadillo


Brief history?
Paper summary
Problems
I^2


Publication bias is when the distribution of observed studies is different from the distribution of all studies. Usually this is taken to mean there is some filter that selects studies based on the strengh of the effct or the direction of the effect (positive or negative). Crucially, we do not observe all studies, so we must infer whether publication bias has occured (like the fundamental problem of causation, we do not observe the counterfactual).

Publication bias has been documented since [at least 1959](https://anthonychigney.github.io/home/blog/first-study-pub-bias/). More recently, a number of techniques in meta-analysis have been used to try and estimate both whether publication bias has occured, and what the effect there would have been without publication bias.


In Cohen's D the formula to estimate the standard error included the effect size, Cohen's D, itself. In the simulation, it is no surprise to see the standard error and the effect size correlated, as they are in figure 3, because it happens [by constuction](https://anthonychigney.github.io/home/blog/CohensD-and-pub-bias/).





Summary

The paper's main argument is that publication bias detection methods can flag up pub bias when none exists, and they can say no effect exists when it actually does (type II error). 

Their argument rests on two strategies. The first is pure simulations where **no publication bias exists**. They find that in their simulations the publication bias techniques say there is publication bias, and their corrected estimates are biased towards zero. 

The second, is where they collect several databases of pre-registered replications which they argue, rightfully in my view, are not contaminated by publication bias. They use the publication bias techniques on these and again find that the techniques say there is publication bias. 


Problems

"...[E]ach of these data sets comprises studies on
disparate processes, using radically different procedures and
designs. Few meta-analysts would be interested in pooling
such diverse effects." 




"Yet, the heterogeneity that we found
within each of those data sets (I2 = 88.4%) was only slightly
higher than the average heterogeneity observed in
psychological meta-analyses, often hovering around 70%.
Furthermore, asymmetry-based methods and RoBMA
overdetected bias not only in the datasets with larger
heterogeneity but also in the most homogeneous dataset..." 


"An alternative to disabling asymmetry-based methods is to
ensure that the meta-analytic model explicitly contemplates
any potential moderator that could potentially give rise to
small-study effects for reasons unrelated to bias. In our
analysis and simulations, it was trivially easy to account for
funnel-plot asymmetry by simply entering the original effects
(or the latent true effect, in the case of the simulations) as a
predictor in the model. Logically, this strategy cannot be
followed in most meta-analyses."

I agree that there is no pure data-driven approach that can replace domain knowledge in a amtea-analysis, given the existence of non-sample heterogneity. 
