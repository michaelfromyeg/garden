---
title: SURE Journal
draft: false
date: 2023-05-12T17:51:23.983Z
summary: " "
joplinId: d84107c2c0cb41fd82d891f3ef390239
backlinks: []
---

# SURE Journal

## 2023-07-31

- Re-orient on EPM work; go over model building scripts and `diff` with original repository to determine changes required to run
  - Scripts look fine; **which data to train on? (`SMAC`, `ROAR`, `ParamILS`, or `random`?)**
  - Can queue model builds to run Tuesday night; will take some of Tuesday to put on cluster
- Skim EPM paper again
- Sync with Chris at 11am
- Prepare e-mail to EPM authors or runnable steps (and repository quality improvements)
  - Schedule send for tomorrow
- Re-run Devon's repository with re-built models; prepare plots
  - All vertical?! Will look at tomorrow

## 2023-08-01

- Build new, more sophisticated models for for use with UP
- ~~Verify EPM e-mail received~~ (message Kevin, Chris)
  - Can run on Python 3.11 fine; needs `np.float` to be renamed `np.float64` (or 32) for use with later NumPy version
  - Will do this after I verify the model outputs
- Send Chris initial set of UP plots
- Build plots for additional experiments (up vs. roar, or succinctly, `UPROAR`, and `naive`), send to Chris
- Verify model outputs; looks like its spitting out `log10` values

## 2023-08-02

- Change `make_prediction` helper for `SurrogateEnvironment` to transform prediction by `10 ** prediction`
  - Send output for `anytime_experiment` to Chris; not sure what to make of the plots... but it is something
- Clean-up and refactoring for `utilitarian_configuration` to make the repository runnable (all experiments, all environments, all datasets)
  - Work on detailed instructions for the project at the moment; should be done EOD
- (Initial) work on benchmarking `naive`, `kappa`, `speedup` experiments... why are they so much slower?
  - Will leverage cluster to try to estimate how long these will take
