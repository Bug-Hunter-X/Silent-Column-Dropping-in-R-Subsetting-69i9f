```r
# This code attempts to subset a data frame using a character vector
# containing column names, but it fails if any of the specified columns
# are missing.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "B")

subset_df <- df[, cols_to_select]

print(subset_df)
```