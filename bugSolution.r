```r
# This improved code checks if all columns exist before subsetting
# and throws an error if any are missing.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "B")

#Check if all columns exist. If not, then stop execution and print error message.
if (!all(cols_to_select %in% names(df))) {
  stop("Error: One or more specified columns are missing.")
}

subset_df <- df[, cols_to_select]

print(subset_df)

# Alternative solution using dplyr package
library(dplyr)

subset_df <- select(df, all_of(cols_to_select))

print(subset_df)
```