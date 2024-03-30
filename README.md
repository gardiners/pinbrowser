
<!-- README.md is generated from README.Rmd. Please edit that file -->

# 📦 pinbrowser

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![runiverse-package badge for pinbrowser
package](https://gardiners.r-universe.dev/badges/pinbrowser)](https://gardiners.r-universe.dev/pinbrowser)
[![R-CMD-check](https://github.com/gardiners/pinbrowser/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/gardiners/pinbrowser/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`pinbrowser` lets you interactively browse a board created with the
[pins](https://pins.rstudio.com/) package. It currently has one useful
function, `browse_board()`, which provides an RStudio viewer that allows
you to explore pins and their metadata.

## Installation

You can install the development version of pinbrowser from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("gardiners/pinbrowser")
```

## Example

Create a demo pin board and view its content in RStudio:

``` r
library(pinbrowser)

my_demo_board <- board_demo()
browse_board(my_demo_board)
```

<figure>
<img src="./man/figures/README-cards.png"
alt="Screenshot of RStudio viewer containing pin metadata." />
<figcaption aria-hidden="true">Screenshot of RStudio viewer containing
pin metadata.</figcaption>
</figure>
