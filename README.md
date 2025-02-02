# Floating-Point Imprecision in Julia

This repository demonstrates a subtle bug that can occur in Julia due to the imprecision inherent in floating-point number representation.  The bug showcases how comparing floating-point numbers directly can yield unexpected results, leading to incorrect conditional branching.

## The Bug

The `bug.jl` file contains a simple function that squares positive numbers and returns the negation of negative numbers. However, due to floating-point limitations, the function may not behave as expected in certain edge cases, particularly when dealing with numbers very close to zero.

## The Solution

The `bugSolution.jl` file provides a corrected version of the function. It addresses the floating-point imprecision by using a tolerance value when making comparisons, avoiding direct equality checks that may fail due to rounding errors.  This more robust approach ensures correct behavior even when dealing with numbers close to zero.

## How to Reproduce

1. Clone the repository.
2. Navigate to the directory containing `bug.jl` and `bugSolution.jl`
3. Run each file using the Julia REPL (`julia bug.jl`, `julia bugSolution.jl`).
4. Compare the outputs to see the difference and understand how the solution addresses the floating-point issue.
