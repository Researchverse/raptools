# raptools (development version)

## New features

* New `ggcalibrate_BA()`: a Bland-Altman style calibration plot showing the deviation of the actual event rate from the prediction (Actual - Prediction) against the prediction. Perfect calibration is the horizontal line at zero, which makes under- and over-prediction at clinically relevant thresholds easier to see (John Pickering).
* `ggcalibrate()` gains `actuals`, to show the actual events (0 or 1) against the predictions, and `alpha_level`, to set the transparency of the confidence interval (John Pickering).

## Improvements

* `ggcalibrate()` now draws the confidence interval of the restricted cubic spline calibration curve itself, instead of a `geom_smooth()` fitted over the curve, which did not reflect the uncertainty in the calibration. The interval is calculated on the log-odds scale and back-transformed, so it stays between 0 and 1 (John Pickering).
* `ggcalibrate()` now removes incomplete cases before fitting when two models are compared. Previously, missing values in either model or the outcome caused an error.

## Deprecated

* The `smooth_method` and `smooth_span` arguments of `ggcalibrate()` are no longer used. They are still accepted, with a warning, so existing code keeps working.

## Documentation

* Corrected the DOI for Pickering and Endre (2012) in the package description to <doi:10.2215/CJN.09590911>.

# raptools 1.23.0

## Bug fixes and enhancements

* Fixed `ggcalibrate_original()` to default `cut_type` to "interval" when not specified
* Fixed `ggcalibrate()` axis labels from "percentage" to "probability" (uses 0-1 scale)
* Implemented missing `ci_level` parameter in `ggcalibrate()`'s geom_smooth
* Added flexible smoothing controls to `ggdecision()`, `ggprerec()`, and `ggcalibrate()`:
  - `show_smooth`: toggle smoothing line display
  - `smooth_method`: choose smoothing method ("loess", "gam", etc.)
  - `smooth_span`: control smoothing span (default 0.75)
  - `smooth_se`: toggle confidence interval display
* Fixed critical bug in lrm() model handling across 10 function instances
  - Corrected variable extraction order to prevent "object not found" errors
  - Now properly extracts outcome variable before reassigning predictions
* Enhanced documentation with CRAN installation instructions
* Improved GitHub Pages integration with clickable logo
* All changes maintain backward compatibility with sensible defaults

# raptools 1.22

## Major changes for CRAN submission
* **Package renamed from 'rap' to 'raptools'** to resolve CRAN name conflict
* Fixed DESCRIPTION file formatting for CRAN compliance
* Added proper imports and global variable declarations to handle NSE issues
* Cleaned up package structure to meet CRAN standards
* Updated .Rbuildignore to exclude development files

## Previous versions

Version 1.22:
* Addition of ggcontribute graph
* Changed from geom_line to geom_step for the ROC plot (better data representation)
* Bug fixes

Version 1.11:
* Made NRI metrics for models optional (use NRI_return = TRUE)
* Changed behavior so "x2 = NULL" is possible for CI.raplot
* Bug fixes

Version 1.10:
* Addition of ROC plot
* Calibration plot now uses continuous curves (old format available as ggcalibrate_original())
* Addition of precision recall curves
* All plots can be for one or two models

Version 1.03:
* Major changes allowing logistic regression models from glm (stats) and lrm (rms)
* Added Risk Assessment Plot, calibration plot and decision curve outputs
* Output functions now return lists with metrics for each bootstrap sample
* CI.classNRI produces confusion matrices for events and non-events separately
* Bootstrapping used for confidence intervals

## Background

The raptools package began as MATLAB code in 2012 following the publication of "New Metrics for Assessing Diagnostic Potential of Candidate Biomarkers" (Clinical Journal of the American Society of Nephrology, 2012). The package provides comprehensive tools for assessing the comparative performance of logistic regression models, particularly in the context of biomarker evaluation and clinical prediction model improvement.
