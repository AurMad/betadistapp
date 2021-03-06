Shiny app for computing and evaluating the alpha and beta parameters of
Beta distributions
================

## Package installation and update

The easiest way to install the `betadistapp` package is from Github.
This requires installing the `devtool` package first.

``` r
install.packages("devtools")
```

Then load the `devtool` package:

``` r
library(devtools)
```

In order to install (or update) the STOCfree package, run the following
line:

``` r
install_github("AurMad/betadistapp")
```

## The `shiny_beta()` function

The package contains a single function called `shiny_beta()`. This
function launches a shiny app. The user can specifiy either the mean and
standard deviations of a Beta distributions using sliding bars. The
corresponding Beta distributions will be plotted and the corresponding
alpha and beta parameters will be displayed. The used can also enter the
alpha and beta paramters which will lead to the corresponding
distribution being displayed.

``` r
library(betadistapp)

shiny_beta()
```
