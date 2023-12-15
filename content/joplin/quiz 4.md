---
title: Quiz 4
draft: false
date: 2023-11-01T21:57:24.045Z
summary: " "
joplinId: ad963ac80c67465e82235fc15ae2863f
backlinks:
  - id: ad963ac80c67465e82235fc15ae2863f
    text: Quiz 4
    icon: fas
    href: /./quiz-4
---

# Quiz 4

Reducing unfairness in learning algorithm applications.

## Learning Outcomes

- Discuss the consequences of erroneous (biased) data on the training of learning algorithms and how it impacts its end users
- Discuss potential ethical implications in errors in feature selection, model selection
- Describe strategies for reducing algorithmic bias
- Apply strategies to reduce unfairness in a predictive model trained on an unbalanced dataset
- Describe advantages and limitations of the strategies used to reduce unfairness in predictive models

## Lecture

- Curb the impacts of bias
  - e.g., in the income data set, some groups are more likely to be assigned to a specific target value (...not good because not reflective of reality; model is learning bad kind of bias)
  - It's not hard for algorithms to learn a relationship between gender and income, but the reality is the data is unfair to begin with
- Under-sampling; subset the larger groups to create equal balance
  - Limits the amount of data available to our model
- Oversampling
  - Either re-sample duplicates (randomly)
  - or introduce artificial examples, similar (but different) from ones in the original data
  - SMOTE ("Synthetic Minority Oversampling Technique") is one way of achieving this
    - Augment the data set with new data, estimated 'between' original examples evenly
    - The goal of SMOTE is to balance the **target variable,** not the groups themselves
    - It takes two parameters: `k` and `dup_size`
      - `k` is the number of neighbors to consider lines between
      - `dup_size` is how many times to go over each of the points and create a new example
      - `dup_size=0` achieves parity with the majority class (i.e., if unspecified, achieves perfect balance)
    - SMOTE could be combined with under-sampling
- (You could also tweak the cost function to weigh the minority class more!)
- Adversarial debiasing: model A is penalized if a subsequent model can guess some feature from the prediction
  - i.e., it's relying too heavily on some $f_p$
  - Maximize the accuracy, but also minimize the ability of model B to guess features

## Assignment

- Visualization: use EDA to assess imbalance, unfairness
- Drop columns, under-sample, oversample
- Assess accuracy and fairness metrics

Fairness: equal distribution among groups.

Discussion...

- Feature suppression: doesn't help, proxies learned
- Under-sampling: many fairness metrics improved, but test accuracy drops (...underfit)
- Over-sampling: overfitting, opposite problem
