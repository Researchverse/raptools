## Submission - Version 1.24.0

This is a minor feature release.

### New features
* New `ggcalibrate_BA()`: a Bland-Altman style calibration plot (deviation of the actual event rate from the prediction, against the prediction).
* `ggcalibrate()` gains `actuals` (show the observed events as rug-style marks) and `alpha_level` (transparency of the confidence interval).

### Improvements
* `ggcalibrate()` now shows the confidence interval of the restricted cubic spline calibration curve itself, calculated on the log-odds scale so it stays within 0 and 1, instead of a `geom_smooth()` band.
* `ggcalibrate()` removes incomplete cases before fitting two models, which previously caused an error.
* The `smooth_method` and `smooth_span` arguments of `ggcalibrate()` are deprecated; they are still accepted, with a warning, for backward compatibility.

### Documentation
* Corrected the DOI of Pickering and Endre (2012) in the Description field to <doi:10.2215/CJN.09590911>.

## Test environments

* local: macOS, R 4.4.3
* GitHub Actions: ubuntu-latest (release, oldrel-1), windows-latest (release), macOS-latest (release)

## R CMD check results

0 errors | 0 warnings | 0 notes

## Downstream dependencies

There are no downstream dependencies for this package.
