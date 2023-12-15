---
title: Dragonfly (2023-10-11)
draft: false
date: 2023-10-11T20:07:51.000Z
summary: " "
joplinId: b943cb1aabe840799a146c381e3ee09e
backlinks:
  - id: b943cb1aabe840799a146c381e3ee09e
    text: Dragonfly (2023-10-11)
    icon: fas
    href: /./dragonfly-(2023-10-11)
---

# Dragonfly

...and the frontier supercomputer.

Tablet's dead.

- It's easy to build a high-radix crossbar
- Mix in optical; high fixed cost, good for long distances
- Shorter routing; move across all groups
- Routers can connect to local processors, other routers (within group), other groups
- A balanced network
  - Assuming $a \cdot h$ connections to other routers ($\approx g$)
  - Assume random, (uniform) traffic
  - Each router receives a packet; sends to one of $a-1$ routers; each receives $\frac{a-1}{a}h$ messages; we'll approximate as $h$
  - (Analysis for number of processors; Dragonfly parameters)
- Routing
- Bandwidth
