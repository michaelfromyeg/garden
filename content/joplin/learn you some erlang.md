---
title: Learn You Some Erlang
draft: false
date: 2023-09-07T16:24:22.041Z
summary: " "
joplinId: 09d1619a4f9b4322bd6b359e308585a3
backlinks: []
---

# Learn You Some Erlang

- Erlang is functional
- Erlang has an "actor model"; each actor is a separate process in a VM
- You pass messages between actors; communication is explicit
- Erlang runs in a VM; like Java, can run anywhere
- The cons...

  - Processes are lightweight, but not infinitesimally small

- Getting started
  - `erl`
  - (Skipping the shell commands bit...)
  - Numbers
    - Expressions terminated with `.` (then whitespace, i.e., ` \n\t`)
    - Integers and floats handled "gracefully" (`div` exists for integer-integer division)
    - `<base>#<value>` is a way to write a number in a different base
  - Variables
    - They're **invariable**
    - Begin with an uppercase letter
    - The `=` operator does do comparison; will throw exception is unequal
    - (...but can do binding if LHS is unbound)
    - The `=` operator is the basis of "pattern matching"
  - Atoms
  - Comparison operators
    - Note a total ordering exists between types, namely `number < atom < reference < fun < port < pid < tuple < list < bit string`
  - Tuples
  - Lists
    - (Erlang sucks at strings because of this...)
  - Pattern matching, built-ins
    - `[Head | Tail]`
    - `hd`, `tl`
  - List comprehensions
    - ${x \in \mathbb{R} : x = 2x}$ becomes `[2*X || X <- [...], <N generator expressions>, X =:= 2, <M constraints>]` (written generally for learning)
  - Binary data
    - Enclosed in `<<`, `>>`
    - `Var:24` implies 24 bits of data
    - `Value`, `Value:Size`, `Value/TypeSpecifierList`, `Value:Size/TypeSpecifierList`
    - `TypeSpecifierList` is like `type-signedness-endianness-unit`
      - Unit is to do with the size of each segment, in bits (1-256)
    - Binary comprehensions exist
- Modules
  - All Erlang code is in modules
  - `<module-name>:<function>`
  - Is declared in the file itself
  - Compile code via `erlc` or `c(...)` in the shell
- Function syntax
  - Can "overload" function with multiple parameter lists
  - `|` is the cons operator
  - On top of pattern matching in function arguments, also guards
  - e.g., `function my_function(X) when X > 0 -> ...`
    - Can chain logic via `;` (or) or `,` (and)
  - If-else
    - Else becomes the 'true' branch
  - case...of
    - Switch statements
- Types
  - Dynamic typing; strongly typed (no implicit conversions)
  - `is_<type>` functions, and `<type>_to_<type>` functions
- Recursion

  - A few basic examples...
  - Tail recursion via an accumulator
    - e.g., `tail_fac(N,Acc) when N > 0 -> tail_fac(N-1, N*Acc)`
  - (Only export the 1 argument factorial)
  - You often need to reverse the result of tail recursive calls, i.e., `lists:reverse`

    - (I don't really get the `++` thing... need to ask Mark)

      Namely,

      ```erlang
      reverse([]) -> [];
      reverse([H|T]) -> reverse(T)++[H].
      ```

  - TODO: make a tail recursive zip, lenient zip
  - Quicksort
  - Trees

- Higher-order functions
  - Passing functions around as "arguments"
  - `fun Module:Function/Arity`
  - Anonymous functions: `fun(Args1) -> Expression1;`
  - Inheritance from parent to "child" functions (e.g., an anonymous function inside)
  - Map, filters, folders
    - Fold is the most basic; can build reverse, map, filter
  - Many cool list methods [here](http://erldocs.com/18.0/stdlib/lists.html)
- Errors
  - A compilation of common errors
  - Errors, exists, and throws (intentional, handled)
  - Try, catch, after (not finally)
- Functionally Solving Problems
  - Reverse Polish Notation Calculator
    - Uses a stack
  - Heathrow to London
    - Left as exercise
- Data Structures
  - Records
  - Dictionaries; key-value stores
  - Arrays
  - Sets
  - Graphs
  - Queues
- Concurrency
  - (Mostly conceptual...)
  - Amdahl's law
  - Message passing operator, `!` ("bang")
  - `receive` keyword
    - Gets from; can send message _back_ to the PID
  - `spawn/3`
- More on multiprocessing
  - Can leverage recursion for future calls; taking from a fridge as an example
  - Wrappers around "!"s with `store`, `take`, etc., helpers
  - `receive`s pick out of a mailbox; if not matched, just left
