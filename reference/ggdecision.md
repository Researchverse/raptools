# The Decision curve

ggdecision plots decision curves to assess the net benefit at different
thresholds

ggdecision plots decision curves to assess the net benefit at different
thresholds

## Usage

``` r
ggdecision(
  x1,
  x2 = NULL,
  y = NULL,
  show_smooth = TRUE,
  smooth_method = "loess",
  smooth_span = 0.75,
  smooth_se = FALSE
)

ggdecision(
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

a ggplot

a ggplot

## References

Vickers AJ, van Calster B, Steyerberg EW. A simple, step-by-step guide
to interpreting decision curve analysis. Diagn Progn Res 2019;3(1):18.
2. Zhang Z, Rousson V, Lee W-C, et al. Decision curve analysis: a
technical note. Ann Transl Med 2018;6(15):308-308.

Vickers AJ, van Calster B, Steyerberg EW. A simple, step-by-step guide
to interpreting decision curve analysis. Diagn Progn Res 2019;3(1):18.
2. Zhang Z, Rousson V, Lee W-C, et al. Decision curve analysis: a
technical note. Ann Transl Med 2018;6(15):308–308.
