---
title: Quiz 2
draft: false
date: 2023-10-04T18:00:32.847Z
summary: " "
joplinId: 52be0c9d3a194152bb0d94400fc6141d
backlinks:
  - id: 52be0c9d3a194152bb0d94400fc6141d
    text: Quiz 2
    icon: fas
    href: /./quiz-2
---

# Quiz 2

- Discuss the implications of data ownership in data science
- Argue the advantages and disadvantages of collecting individuals’ data online
- Distinguish between a sample and a population, what attributes make a representative sample and the possible ethical implications of a non-representative sample
- Explain the elements of experimental design
- Identify possible sources of bias in datasets (such as historical, measurement, and representation bias)
- Describe the ethical implications of variable choice in data science (e.g., use of proxies, use of gender and race as variables)
- Apply good practices for minimizing errors in data cleaning
- Apply methods for improving privacy and anonymity in stored data and data analysis, such as k-anonymity and randomized response
- Explain the notion of differential privacy

- Data is the new gold; data enables ML
- Two main ways of achieving data
  - Experimental design
    - Observational study, no intervention; subjects assign themselves
    - Experimental study, planned intervention; subjects assigned by researchers to treatment
      - Better to eliminate confounding variables
      - Can somewhat establish causation
  - Pre-existing data
    - May be less structured, more biased; lots of it; could be more truthful
- Samples need to be representative and sufficiently large
  - Agree on population; how to collect responses; sufficient size; random vs. stratified sampling; randomness
- Sampling failures
  - Under-coverage (missing part of population)
  - Convenience sampling
  - Voluntary response bias
  - Non-response bias (a sect of individuals don't respond for a reason)
  - Response bias, lying
- Ethical considerations
  - Informed consent, voluntary participation, withdrawal possibilities, equitable distribution of risks; benefits, privacy
- Bias in ML
  - Human bias
  - Historical bias (model doesn't match current state of world, e.g., male CEOs)
  - Representation bias (data doesn't cover population; population has changed significantly)
  - Measurement bias (oversimplified classification task, measurement process varies, quality of data varies, or is incorrect)
- "Proxy variables"
  - To study intelligence, look at GPA
  - Can determine age, race, gender from resume, sometimes
    - Model learns biases anyways
- Confounding variables; lurking variables
  - (Correlation != causation)
- Types of missing variables
  - MCAR, no correlation
    - Random
    - e.g., some data not saved correctly
  - MAR, missing at random
    - Correlates to another variable
    - e.g., less data from those aged 18-25, but spend similar
  - MNAR, missing not at random
    - Correlates to itself
    - e.g., low spend values missing if normally distributed
- Right to Privacy
  - Fundamental in many countries, including Canada
  - All kinds of personal information
- Identifiers
  - Direct identifiers: record ID, patient number, SIN, address, name
  - Indirect identifiers: postal code, DOB
- k-anonymity
  - Do we have k copies of each row? (for quasi-identifiers...)
  - Can be broken with multiple data sets
- Differential privacy
  - Mathematical approach to privacy
  - Single row doesn't changed output vary much
  - We randomly jitter values to create noise

**For yes/no case, 50% of the time we say their answer, 50% of the time we randomly guess. This introduces jitter.**

5/12 is our survey respondents

Based on our knowledge of jitter: 3/4 of the times we're
