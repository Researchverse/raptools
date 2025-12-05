# The Precision-Recall plot

ggprerec plots Precision (PPV) v Recall (Sensitivity)

## Usage

``` r
ggprerec(
  x1,
  x2 = NULL,
  y = NULL,
  show_smooth = TRUE,
  smooth_method = "loess",
  smooth_span = 0.75,
  smooth_se = FALSE
)
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

- show_smooth:

  Logical, whether to display smoothed curves (default = TRUE)

- smooth_method:

  Smoothing method for geom_smooth. Options: "loess", "lm", "glm",
  "gam". Default is "loess"

- smooth_span:

  Span parameter for loess smoothing, controls the degree of smoothing
  (default = 0.75). Lower values = less smooth

- smooth_se:

  Logical, whether to display confidence interval around smooth (default
  = FALSE)

## Value

A ggplot object displaying the precision-recall curve(s) with recall
(sensitivity) on the x-axis and precision (positive predictive value) on
the y-axis. If two models are provided, both curves are shown for
comparison.
