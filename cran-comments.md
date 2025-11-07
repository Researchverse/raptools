## Resubmission

This is a resubmission. In this version I have:

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
