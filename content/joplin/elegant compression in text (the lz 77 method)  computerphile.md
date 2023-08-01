---
title: Elegant Compression in Text (The LZ 77 Method), Computerphile
draft: false
date: 2023-04-04T10:41:49.110Z
summary: " "
joplinId: 78967b0986434328bf47e6bdb5c405e3
backlinks: []
---

# Elegant Compression in Text (The LZ 77 Method)

https://www.youtube.com/watch?v=goOa3DGezUA

- Invented by Lempel and Ziv
- An initial idea: store a dictionary at the top of the file, and point to uses
- A typical LZ compressor works through the text; look for recurring sequences of characters
  - Re-use these sequences as much as possible
  - No overt dictionary, but re-uses items **in place**
  - e.g., it remembers "computer" in "computerphile"; when "computer" re-appears, replace with a composite pointer
    - Composite pointer points to start of phrase, and notes length
    - Pointer notation is `<j, l>`
      - `j` is a relative jump
      - `l` is the length (number of characters to read)
    - (Note this is just friendly notation to better understand the algorithm)
    - Shifts from N-bytes of text to (at minimum) 2-bytes of `<j, l>`
    - (In reality, not many situations where long words are repeated again and again... typically focus on long jump back with shorter strings)
    - Instead of a `j` 8-bit and `l` 8-bit split, maybe 12 for `j` instead (...still 2-bytes total)
      - This would give a 4096 jump with to a maximum 16-length string
  - Algorithm constantly working on dictionary
  - Even with simple algorithm, many byte value becomes 2-byte pointer
