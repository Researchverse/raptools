# Statistical metrics and confidence intervals for classes

The function CI.classNRI calculates the NRI statistics for
reclassification of data already in classes with confidence intervals.
Uses statistics.classNRI.

## Usage

``` r
CI.classNRI(
  c1,
  c2,
  y,
  s1 = NULL,
  s2 = NULL,
  conf.level = 0.95,
  n.boot = 1000,
  dp = 3
)
```

## Arguments

- c1:

  Risk classes of the baseline model (ordinal)

- c2:

  Risk classes of new model

- y:

  Binary of outcome of interest. Must be 0 or 1.

- s1:

  The savings or benefit when am event is reclassified to a higher group
  by the new model (positive numeric)

- s2:

  The benefit when a non-event is reclassified to a lower group
  (positive numeric)

- conf.level:

  The confidence interval expressed as a fraction of 1 (ie 0.95 is the
  95% confidence interval )

- n.boot:

  The number of "bootstraps" to use. Performance slows down with more
  bootstraps. For trialling result, use a low number (eg 2), for
  accuracy use a large number (eg 2000)

- dp:

  The number of decimal places to display

## Value

A list with the following elements:

- meta_data:

  Some overall meta data - Confidence Interval, number of bootstraps,
  s1, s2

- Metrics:

  Point estimates of the statistical metrics.

- Each_bootstrap_metrics:

  Point estimates of the statistical metrics for each bootstrapped
  sample.

- Summary_metrics:

  Point estimates with confidence intervals of the statistical metrics
  (e.g. Total, Events, Non-events, Prevalence, NRI, IDI, confusion
  matrices).

A matrix of metrics
