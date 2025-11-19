# The function anova_glm() returns the Chi^2 and degrees of freedom for each variable & the same was anova.rms() does from lrm() in the rms package.

The function anova_glm() returns the Chi^2 and degrees of freedom for
each variable & the same was anova.rms() does from lrm() in the rms
package.

## Usage

``` r
anova_glm(f)
```

## Arguments

- f:

  A logistic regression fit created using glm (base package)

## Value

A data frame with Chi-Square values and degrees of freedom for each
variable in the model, plus a TOTAL row summarizing the overall model
statistics.
