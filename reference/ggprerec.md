# The Precision-Recall plot

ggprerec plots Precision (PPV) v Recall (Sensitivity)

## Usage

``` r
ggprerec(x1, x2 = NULL, y = NULL)
```

## Arguments

- x1:

  Either a logistic regression fitted using glm (base package) or lrm
  (rms package) or alculated probabilities (eg through a logistic
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

## Value

A ggplot object displaying the precision-recall curve(s) with recall
(sensitivity) on the x-axis and precision (positive predictive value) on
the y-axis. If two models are provided, both curves are shown for
comparison.
