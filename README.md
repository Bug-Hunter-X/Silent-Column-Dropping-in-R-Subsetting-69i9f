# R Silent Column Dropping Bug

This repository demonstrates a subtle bug in R's data frame subsetting behavior.  When using character vectors to select columns, R silently drops columns that are not found, without issuing any warnings or errors. This can lead to incorrect results that are difficult to trace.

The `bug.r` file contains code that exhibits this behavior. The `bugSolution.r` file provides a solution using safer subsetting methods.

## How to Reproduce

1. Clone the repository
2. Open `bug.r` in an R environment.
3. Run the code. Observe that column 'D' is missing from the original data frame, but the subsetting operation does not throw an error. The resulting data frame only contains columns 'A' and 'B'.

## Solution

The `bugSolution.r` file demonstrates a more robust way to subset data frames, which explicitly checks for missing columns and handles them appropriately.