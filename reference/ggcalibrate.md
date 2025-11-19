# The Calibration plot

ggcalibrate plots the stats::predicted events against the actual event
rate

## Usage

``` r
ggcalibrate(x1, x2 = NULL, y = NULL, n_knots = 5, ci_level = 0.95)
```

## Arguments

- x1:

  Either a logistic regression fitted using glm (base package) or lrm
  (rms package) or calculated probabilities (eg through a logistic
  regression model) of the baseline model. Must be between 0 & 1

- x2:

  Either a logistic regression fitted using glm (base package) or lrm
  (rms package) or calculated probabilities (eg through a logistic
  regression model) of the new (alternative) model. Must be between 0 &
  1

- y:

  Binary of outcome of interest. Must be 0 or 1 (if fitted models are
  provided this is extracted from the fit which for an rms fit must have
  x = TRUE, y = TRUE).

- n_knots:

  The curves are made by fitting a restricted cubic spline (rms
  package). The default 5-knots is usually enough.

- ci_level:

  Confidence interval of the curve (default = 0.95).

## Value

a ggplot

## Examples

``` r
# Quick example with subset of data
data(data_risk)
data_subset <- data_risk[1:100, ]  # Use first 100 rows for speed
complete_cases <- complete.cases(data_subset)
data_clean <- data_subset[complete_cases, ]
y <- data_clean$outcome 
x1 <- data_clean$baseline
x2 <- data_clean$new
output <- ggcalibrate(x1, x2, y, n_knots = 3, ci_level = 0.95)
#> New names:
#> • `Model` -> `Model...1`
#> • `Model` -> `Model...3`

# \donttest{
# Full dataset example
data(data_risk)
complete_cases <- complete.cases(data_risk)
data_clean <- data_risk[complete_cases, ]
y <- data_clean$outcome 
x1 <- data_clean$baseline
x2 <- data_clean$new
output <- ggcalibrate(x1, x2, y, n_knots = 5, ci_level = 0.95) 
#> New names:
#> • `Model` -> `Model...1`
#> • `Model` -> `Model...3`
# }
```
