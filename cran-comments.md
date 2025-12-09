## Resubmission - Version 1.23.0

This is a maintenance update with bug fixes and enhancements:

### Bug fixes
* Fixed `ggcalibrate_original()` default parameter error when `cut_type` not specified
* Fixed `ggcalibrate()` axis labels (changed from "percentage" to "probability" to match 0-1 scale)
* Fixed critical bug in lrm() model handling that caused errors when using Frank Harrell's rms::lrm() models
* Implemented missing `ci_level` parameter in `ggcalibrate()`

### Enhancements
* Added flexible smoothing controls (`show_smooth`, `smooth_method`, `smooth_span`, `smooth_se`) to plotting functions
* All changes maintain backward compatibility with sensible defaults
* Improved documentation and examples

### Previous submission (1.22.0)
* Removed "Tools for" from the Description field in DESCRIPTION (now starts with "Assessing the...")
* Unwrapped examples from `\donttest{}` by creating small toy examples that run in < 5 seconds:
  - Using first 100 rows of data instead of full 444 rows
  - Using fewer knots (3 instead of 5) in calibration plots
  - Using fewer bootstraps (10 instead of 1000) in CI calculations
* All quick examples now execute automatically during R CMD check
* Kept full dataset examples within `\donttest{}` for comprehensive demonstration

## Previous submission fixes

* Removed redundant "Provides functions for" from the DESCRIPTION
* Explained the AUCs acronym as "Area Under the Curves" in the DESCRIPTION
* Added references with DOIs to the DESCRIPTION (Pickering & Endre 2012, Pencina et al. 2008)
* Added `\value` documentation to all exported functions (anova_glm, ggcontribute, ggprerec, ggroc)
* Replaced `\dontrun{}` with `\donttest{}` in all examples as they are executable in < 5 seconds
* Updated examples to handle missing values properly
* Fixed version number to use three components (1.22.0)
* Updated moved URL in README.md
* Added .github and _pkgdown.yml to .Rbuildignore

## Test environments

* local: macOS (R 4.4.3)
* GitHub Actions: ubuntu-latest (devel, release, oldrel-1), windows-latest (release), macOS-latest (release)
* win-builder: devel and release

## R CMD check results

0 errors ✓ | 0 warnings ✓ | 0 notes ✓

## Downstream dependencies

There are no downstream dependencies for this package.
