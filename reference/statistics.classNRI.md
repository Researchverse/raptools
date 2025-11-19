# Reclassification metrics with classes (ordinals) as inputs

The function statistics.classNRI calculates the NRI metrics for
reclassification of data already in classes. For use by CI.classNRI.

## Usage

``` r
statistics.classNRI(c1, c2, y, s1 = NULL, s2 = NULL)
```

## Arguments

- c1:

  Risk class of Reference model (ordinal factor).

- c2:

  Risk class of New model (ordinal factor)

- y:

  Binary of outcome of interest. Must be 0 or 1.

- s1:

  The savings or benefit when an event is reclassified to a higher group
  by the new model. i.e instead of counting as 1 an event classified to
  a higher group, it is counted as s1.

- s2:

  The benefit when a non-event is reclassified to a lower group. i.e
  instead of counting as 1 an event classified to a lower group, it is
  counted as s2.

## Value

A matrix of metrics for use within CI.classNRI

## Examples

``` r
# Quick example
data(data_class)
data_subset <- data_class[1:100, ]  # Use first 100 rows for speed
y <- data_subset$outcome 
c1 <- data_subset$base_class
c2 <- data_subset$new_class
output <- statistics.classNRI(c1, c2, y)

# \donttest{
# Full dataset example
data(data_class)
y <- data_class$outcome 
c1 <- data_class$base_class
c2 <- data_class$new_class
output <- statistics.classNRI(c1, c2, y) 
# }
```
