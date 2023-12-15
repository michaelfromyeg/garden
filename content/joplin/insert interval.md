---
title: Insert Interval
draft: false
date: 2023-06-16T00:44:43.079Z
summary: " "
joplinId: bd312d9e93fe4f17a774019b56b42d1c
backlinks:
  - id: bd312d9e93fe4f17a774019b56b42d1c
    text: Insert Interval
    icon: fas
    href: /./insert-interval
---

# Insert Interval

You are given an array of non-overlapping intervals intervals where `intervals[i] = [start_i, end_i]` represent the start and the end of the `ith` interval and `intervals` is sorted in ascending order by `start_i`. You are also given an interval `newInterval = [start, end]` that represents the start and end of another interval.

Insert `newInterval` into `intervals` such that `intervals` is still sorted in ascending order by `start_i` and `intervals` still does not have any overlapping intervals (merge overlapping intervals if necessary).

Return `intervals` after the insertion.

e.g.,

```
Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
Output: [[1,5],[6,9]]
```

```
Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
Output: [[1,2],[3,10],[12,16]]
Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10].
```

Idea?

- Find the first interval that the lower-bound of `newInterval` fits into
- Continue to combine it with subsequent intervals, replacing those intervals
