---
layout: single
title: "Does your study's confidence interval cover the average effect?"
use_math: true
date: 2025-05-06
published: false
categories: blog
tags:
  - External Validity
---

A single paper estimates an effect of some treatment. This might be a precise, unbiased estimate of that treatment in that setting (internally valid) but often that's not what we are interested in. We want to know what effect a similar such treatment — perhaps in a new place and at a different time — would have. Our single study might provide a bad guess at what this new treatment effect would be. In two papers Clifford, Leeper and Rainey examine how much we can infer about the general population of estimates using one estimate. 

1. Generalizing Survey Experiments via Topic Sampling[Clifford, Leeper & Rainey 2024](https://doi.org/10.1007/s11109-023-09870-1).

2. Limits of Single‑Topic Experiments[Clifford & Rainey 2025](https://doi.org/10.1017/pan.2024.20).

### First Paper Summary

The first paper is effectively a study with a large number of treatment arms. Their choice of treatment in all arms is partisan cue. Partisan cue is where a policy is tied to a poltical party, and people are asked about support for that policy, and each arm has a different policy (or *topic*)  Now this is the interesting part, They use partisan cue because it is noted as having high variation in the treatment effect estimates. They can therefore investigate **why** treatment effects differ. But the reason it's particularly interesting, is how they do this. 

What they say is that an individual study of partisan cue might not give much information on what a new estimate of partisan cue is. Now a meta-analysis of partisan cue studies could give the average of the treatment effects, but maybe it has publication bias (researchers may choose particular policies they know will have more of a partisan cue effect e.g.), or the studies are too different to be comparable, so this is a biased estimate of the average of the treatment effect population. They therefore propose an alternative to standard meta-analysis for this: random topic selection. 

A topic here is the policy or message being used in the partisan cue experiment, such as support for foreign aid or drug legalisation. In principle though, any characteristic of a population of treatments could be used. Why is this interesting? In principle, **random sampling of treatment effects to investigate** could give an unbiased estimate of the average of the population of such treatments. If you have different sub-groups of treatments (e.g. in their paper economic vs social issues) you can investigate why effects different and get conditional averages. 

Now, I'll get into the issues with this later but here's what they find:

![Figure 1 from Clifford, Leeper & Rainey 2024. Quote: "Figure shows the estimates of the treatment effects for each policy. The policy stems are separated into the three policy categories and ordered within each category from the largest estimate (top) to the smallest estimate (bottom). The color indicates the percent aware of the parties’ positions on the issues. Green points and lines indicate high awareness and orange points and lines indicate low awareness. While partisan cues have generally positive effects, the magnitude of the effect varies substantially across issues". I would also say economics issues tend to have larger partisan cue effects than social issues.](/home/assets/blogassets/topics.PNG)

Basically, there is a lot of variation in partisan cue effects by topic, but most treatment effects are positive. Economic partisan cue effects tend to be larger than social issues (the hypothesis being these are more difficult issues to form an opinion on so the "partisan cue" provides more of a signalling effect). They also find that topics people know more about have less of a partisan cue effect. 

Criticis

Now I do find this interesting, but, of course, there are issues. Firstly, how does one determine the population of treatment effects to be sampled from, and therefore the sampling frame? The authors use a database of previoulsy studied questions but then how is that so different from doing a meta-analysis of those previous studies? One answer is that it is the same authors in the same setting doing each topic

Unfortunately, topic is only one variable that may differ between single studies. Other things like data cleaning, researcher effects etc. Is a multi-topic study really better than a meta-analysis?

Difficulty of inevnting a "Topic population" authors acknowledge.

Example: it depends on data cleaning

"Next, a research assistant classified each remaining question at three levels. At the lowest level, we classified each question according to the specific policy, such as eliminating fossil fuel subsidies. At the next level up, we classified each question’s issue area, such as energy. And finally, at the top level, we assigned each to one of three categories (economic, social, foreign policy). As discussed below, we use these classifications for the purpose of sampling and describing variation in treatment effect size."

















Single-topic experiments—where researchers fix on one issue or stimulus to test a causal mechanism—are a staple of political science. But how much can we generalize from “one topic” to the broader universe of possible topics? In their new letter in *Political Analysis*, Clifford and Rainey (2025) quantify this gap by asking: **how often does a 95 % confidence interval (CI) from a single-topic study actually contain the “typical” treatment effect across all topics?** Spoiler: a lot less often than you think.

### What the Paper Does

Clifford and Rainey define the **typical treatment effect** as the average effect one would see if topics were sampled at random from a well-specified population of topics (e.g., all issues on which party cues could operate). They then study the **coverage** of single-topic 95 % CIs under two scenarios:

1. **Random topic selection**  
2. **Intentionally unrepresentative topic** (one at the 84th percentile—i.e., 1 σ above the mean effect)

They show that the standard CI from a single-topic study is systematically **too narrow** to capture the typical effect at the nominal 95 % rate.

### Key Findings

Let \(c\) be the **deflation factor**, the ratio of a single-topic CI’s width to the width needed for nominal 95 % coverage of the typical effect. Then the actual coverage is
\[
1 - 2\bigl(1 - \Phi(1.96 / c)\bigr).
\]
For a study with \(N = 1{,}000\) respondents and plausible outcome variances, they find:

- **Random topic**  
  - \(c \approx 1.8\) ⇒ coverage ≈ 72 % instead of 95 %.  
  - If you use a one-tailed test to infer sign, Type I error rises to ≈ 14 % (vs. 2.5 %), a ≈ 460 % inflation.

- **Hand-picked “big effect” topic**  
  - Coverage ≈ 67 %.  
  - One-tailed error ≈ 33 % (vs. 2.5 %), a ≈ 1 220 % inflation.

These numbers vary with sample size (coverage falls as \(N\) grows), but the qualitative lesson is the same: **95 % CIs from single-topic studies capture the typical effect far less often than researchers assume.**

### Why It Matters

- **Over-generalization risk**: Readers and authors routinely interpret single-topic CIs as if they apply to a broader class of issues. That leads to systematically overstating confidence in an effect’s size or even its existence.
- **Error inflation**: Tests of direction (one-tailed) suffer massive Type I error inflation when single-topic CIs are misinterpreted as if they were drawn from a population of topics.
- **Fixes**:  
  - **Topic sampling designs**: Draw 25–50 topics at random and allocate ~20–50 % more respondents than a single-topic study to estimate the **typical effect** directly ([Clifford, Leeper, and Rainey 2023](https://doi.org/10.1007/s11109-023-09870-1)).  
  - **Estimators**: Use a nonparametric, unbiased estimator or a hierarchical model to summarize heterogeneity across topics ([Clifford and Rainey 2024](https://doi.org/10.1017/pan.2024.1)).  
  - **Meta-regression**: If you must rely on existing single-topic studies, condition on observable drivers of effect heterogeneity (e.g., original effect size or sample size) to restore nominal coverage.

### Bottom Line

Single-topic experiments have their place—especially early in a program, to establish that *some* effect exists under idealized conditions. But **claims about what would happen “on average” across issues demand either multiple topics or models that explicitly account for topic-level variation**. Failing to do so means repeatedly drawing too-narrow CIs, missing the true average effect 25–50 % of the time, and incurring massive error-rate inflation when testing for direction.

For researchers serious about external validity, the take-home is clear: **don’t treat one topic as if it were many**. Use topic sampling, hierarchical modeling, or at least adjust your intervals to reflect the deflation factor \(c\) when generalizing from a single topic.

---

**References**

- Clifford, S. & Rainey, C. (2025). *The Limits (and Strengths) of Single-Topic Experiments*. **Political Analysis** 33(2): 164–170. https://doi.org/10.1017/pan.2024.20  
- Clifford, S., Leeper, T., & Rainey, C. (2023). *Generalizing Survey Experiments Using Topic Sampling: An Application to Party Cues*. **Political Behavior**. https://doi.org/10.1007/s11109-023-09870-1  
- Clifford, S. & Rainey, C. (2024). *Estimators for Topic-Sampling Designs*. **Political Analysis** 32(4): 431–444. https://doi.org/10.1017/pan.2024.1  

