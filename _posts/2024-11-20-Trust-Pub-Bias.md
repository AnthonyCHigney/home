---
layout: single
title: "How Much Should We Trust Publication Bias Detection Techniques?"
use_math: true
date: 2024-12-02
published: false
categories: blog
permalink: /home/blog/:title/
tags:
  - Publication Bias
  - Meta-Analysis
  - External Validity
---

Publication bias is when the distribution of observed studies is different from the distribution of all studies. Usually this is taken to mean there is some filter that selects studies based on the magnitude or direction of the effect (positive or negative). Crucially, we do not observe all studies, so we must infer whether publication bias has occured (like the fundamental problem of causation, we do not observe the counterfactual).

Publication bias has been documented since [at least 1959](https://anthonychigney.github.io/home/blog/first-study-pub-bias/). More recently, a number of techniques in meta-analysis have been used to try and estimate both whether publication bias has occured, and what the effect there would have been without publication bias.

A new working paper from Rafael Román-Caballero and Miguel A. Vadillo, ["A meta-analyst should make informed decisions: Issues with Bayesian model-averaging meta-analyses"](https://osf.io/preprints/metaarxiv/tm7dv), argues that these methods can be very unreliable, and overestimate the extent of publication bias that exists. I argue that yes, when used incorrectly, the publication bias detection methods will not work, but the methods in the paper to show this are unconvincing and the conclusions go too far.


###Summary

The paper's main argument is that publication bias detection methods can flag up pub bias when none exists, and they can say no effect exists when it actually does (type II error). 

Their argument rests on two strategies. The first is pure simulations where **no publication bias exists**. They find that in their simulations the pub bias techniques say there is publication bias, and their corrected estimates are biased towards zero. 

The second, is where they collect several databases of pre-registered replications which they argue, rightfully in my view, are not contaminated by publication bias. They use the publication bias techniques on these and again find that the techniques say there is publication bias. 

So, two different strategies, but both show publication bias detection methods can be unreliable, right? Well, I agree they can be unrelaible, but I don't agree either of the strategies in this paper show that. 


###Problems

First, the simulations. I was a little unclear exactly what they had done in the simulations, but that might just be my reading skills. Howevever, they do use Cohen's $d$ as their standardised metric in all simulations. In Cohen's $d$ the formula to estimate the standard error includes the effect size, Cohen's $d$, itself. In the simulation, it is no surprise to see the standard error and the effect size correlated, as they are in figure 3, because it happens [by constuction](https://anthonychigney.github.io/home/blog/CohensD-and-pub-bias/). I suspect the way the have modelled the replication in the simulations would also introduce this correlation.

As for the empirical part, where they take a bunch of replications and combine them, then  test for publication bias and estimate the effect after this non-existent bias is removed. The authors are aware of a possible limitation with this. In their own words:


"...[E]ach of these data sets comprises studies on
disparate processes, using radically different procedures and
designs. Few meta-analysts would be interested in pooling
such diverse effects." 

In other words, they are combining studies that are looking at completely different things! For me, this is fatal for the paper. This is ["combining incommensurable results"](https://datacolada.org/105) and I cannot see any good reason for doing so. For example, they are combining a replication of [how much people agree](https://www.tandfonline.com/doi/full/10.1080/0951508042000202354) "the earth is flat" with a replication of the effect of [less caveolin-1 in mice](https://www.cell.com/cell/fulltext/S0092-8674(11)00645-3?_returnURL=https%3A%2F%2Flinkinghub.elsevier.com%2Fretrieve%2Fpii%2FS0092867411006453%3Fshowall%3Dtrue)! Perhaps "The best laid schemes o’ Mice an’ Men, Gang aft agley" but that doesn't mean you can put them in the same meta-analysis. 

This is their defence:

"Yet, the heterogeneity that we found
within each of those data sets ($I^2$ = 88.4%) was only slightly
higher than the average heterogeneity observed in
psychological meta-analyses, often hovering around 70%.
Furthermore, asymmetry-based methods and RoBMA
overdetected bias not only in the datasets with larger
heterogeneity but also in the most homogeneous dataset..." 

The argument here is that the average psychology meta-analysis contains as little information as an estimate that combines mice cell behaviour and human thoughts about moral objectivity. I do not find this compelling. For starters, $I^2$ is an estimate of the percent of heterogeniety that is not due to sampling error. It is not an absolute measure of heterogneity. Even if it was, it wouldn't matter. The studies that are combined are incommensurable.

However, if they are so incommensurable, how come the pub bias methods suggest there is publication bias in this collection of studies every time? What would we expect? Well, these are replications. The sample size of the replications are based on the size of the effect in the original studies, through power calculations. As we know, the size of the standard error is related to the sample size. So the standard error and the effect size will be correlated. This is generally how publication bias methods work: they look for a correlation between the standard error and the effect size. Eiether directly, like the Egger test, or indirectly by looking at z-scores, like in the Andrews-Kasy method. Therefore, these methods pick up this correlation and point to publication bias where none exists. 

The authors and others have argued that this shows if effects are heterogeneous, and researchers have a good idea of the effect size ex-ante, and therefore efficiently select sample size to all have, for example, 80% power, there will be a correlation between the errors and the effects. This is true, but would mean all the studies are estimating effects that are not only known to be different, but we know how they are different. Should they be doing that? In general, in a (random effects) meta-analysis we assume each study is estimating a different effect and estimate the average of the effects, but the differences are assumed to be random, drawn from a common underlying distribution. 

When the differences are not random, they are not i.i.d, nor exchangeable. We are not going to get unbiased estimates, nor will we be able to make correct inference about publication bias. In short, we cannot do a meta-analysis at all. The replication differences are driven by what is being replicated.


"An alternative to disabling asymmetry-based methods is to
ensure that the meta-analytic model explicitly contemplates
any potential moderator that could potentially give rise to
small-study effects for reasons unrelated to bias. In our
analysis and simulations, it was trivially easy to account for
funnel-plot asymmetry by simply entering the original effects
(or the latent true effect, in the case of the simulations) as a
predictor in the model. Logically, this strategy cannot be
followed in most meta-analyses."

I agree that there is no pure data-driven approach that can replace domain knowledge in a a meta-analysis, given the existence of non-sample heterogneity. 
