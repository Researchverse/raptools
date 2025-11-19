# Extract NRI confidence intervals

Extract a confidence in interval from the bootstrapped results. Used by
CI.NRI

## Usage

``` r
extract_NRI_CI(results.boot, conf.level, n.boot, dp)
```

## Arguments

- results.boot:

  The matrix of n.boot metrics from within CI.NRI

- conf.level:

  The confidence interval expressed between 0 & 1 (eg 95%CI is
  conf.level = 0.95)

- n.boot:

  The number of bootstrapped samples

- dp:

  the number of decimal places to report the point estimate and
  confidence interval

## Value

A two column matrix with the metric name and statistic with a confidence
interval
