---
title: Longest Substring Without Repeating Characters
draft: false
date: 2023-08-02T01:59:50.348Z
summary: " "
joplinId: 13bb19c5216146799662eceef17a6ff8
backlinks:
  - id: 13bb19c5216146799662eceef17a6ff8
    text: Longest Substring Without Repeating Characters
    icon: fas
    href: /./longest-substring-without-repeating-characters
---

# Longest Substring Without Repeating Characters

LeetCode medium. [Source](https://leetcode.com/problems/longest-substring-without-repeating-characters/description/).

## Problem

Given a string s, find the length of the longest substring without repeating characters.

```plaintext
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
```

```plaintext
Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
```

```plaintext
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
```

## Solution

This was my first correct solution, as-is. Definitely a _lot_ of room for clean-up; I really hate the double-`while`.

```python
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        """
        If s[a:b] has no repeating characters, and s[b:c] has no repeating characters,
        then all we have to do is compare the two strings.

        Could we do this iteratively? i.e., build up the longest possible string

        It's a substring, so must be consecutive, limiting our space

        take abcabcbb

        a b c a b c b b -- all single character strings are of course non-repeating
        abc*a* b c b b  -- the first a can merge right...

        Sliding window -- right side moves fast, left side moves slow

        Take the example

        a b c a b c b b
        abca b c b b
        a bcab c b b
        a b cabc b b
        a b c abcb b
        a b c a b cbb (done)

        or the third example

        pwwkew
        p w w k e w
        pww k e w
        p w wkew
        p w w kew (done)

        custom

        abccabcbb
        a b c c a b c b b
        abcc a b c b b
        a b c cabc ... ok now I get it
        """
        n = len(s)
        if n == 0 or n == 1:
            return n

        left = 0
        right = 1

        # character (in s), index of that character
        current_chars: dict[str, int] = {}
        current_chars[s[0]] = 0

        current_max = 0

        while right < n:
            while right < n and s[right] not in current_chars:
                current_chars[s[right]] = right
                right += 1

            current_max = max(current_max, right - left)

            if right == n:
                break

            new_left = current_chars[s[right]] + 1

            for c in s[left : new_left]:
                del current_chars[c]

            left = new_left


        return current_max
```

The moral? A substring is 'contiguous' in the string. So what pattern does that beg? A 'sliding window' or two-pointer approach.

We have a leading pointer that greedily captures new characters so long as they're not in our candidate substring.

If we hit a character that's in our current substring, we jump the slow point to the next character that fixes this condition, i.e., the character after the occurrence of this would-be repeated character.

Track the maximums throughout this.

Done!
