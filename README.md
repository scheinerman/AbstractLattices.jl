# AbstractLattices


This module defines `∨` (for join) and `∧` (for meet)
as binary operators so other modules can import them for their own purposes.

We also define `dist` so distance can be defined in various modules. 


## Usage

Two of my modules use the meet and join operators. Here's what happens
when we don't first define them via this module:
```
julia> using SimplePartitions

julia> using ClosedIntervals

julia> A = 3..5
[3,5]

julia> B = 6..10
[6,10]

julia> A ∨ B
WARNING: both ClosedIntervals and SimplePartitions export "∨"; uses of it in module Main must be qualified
ERROR: UndefVarError: ∨ not defined
Stacktrace:
 [1] top-level scope at none:0
```

To fix this, my modules that use these operators need to import them from
`AbstractLattices`.

## As Boolean operations

The  `∨` and `∧` operations are explicitly defined for `Bool` values. That is
`true ∨ false` evaluates to `true`, and so forth.


