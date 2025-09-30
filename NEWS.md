# rap 1.22

## Major changes for CRAN submission
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

The rap package began as MATLAB code in 2012 following the publication of "New Metrics for Assessing Diagnostic Potential of Candidate Biomarkers" (Clinical Journal of the American Society of Nephrology, 2012). The package provides comprehensive tools for assessing the comparative performance of logistic regression models, particularly in the context of biomarker evaluation and clinical prediction model improvement.
