# The Contribution plot

ggcontribute plots the contribution of each variable to the model

## Usage

``` r
ggcontribute(x1, x2 = NULL, option_flag = c("chi2", "percent"))
```

## Arguments

- x1:

  Either a logistic regression fitted using glm (base package) or lrm
  (rms package) of the baseline model.

- x2:

  Either a logistic regression fitted using glm (base package) or lrm
  (rms package) of the new (alternative) model.

- option_flag:

  A flag to choose if the relative percentage of the Chi2-degrees of
  freedom are plotted.

## Value

A ggplot object displaying the contribution of each variable to the
model(s) using either Chi-square minus degrees of freedom or relative
percentage contribution. If two models are provided, arrows show the
change in contribution between models.
