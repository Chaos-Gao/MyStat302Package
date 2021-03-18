
# MyStat302Package

<!-- badges: start -->
[![R-CMD-check](https://github.com/Chaos-Gao/MyStat302Package/workflows/R-CMD-check/badge.svg)](https://github.com/Chaos-Gao/MyStat302Package/actions)
[![codecov](https://codecov.io/gh/Chaos-Gao/MyStat302Package/branch/master/graph/badge.svg?token=L7RPQBVWOO)](https://codecov.io/gh/Chaos-Gao/MyStat302Package)
<!-- badges: end -->

MyStat302Package is the package designed for Project 3. It contains several functions we designed in the lab, including my_t,test(), my_lm(), my_knn_cv(), and my_rf_cv().

## Installation

You can install the MyStat302Package Package using the following line:

``` r
install.packages("MyStat302Package")
```

Alternatively, you can install the development version directly from GitHub.

```r
# install.packages("devtools")
devtools::install_github("Chaos-Gao/MyStat302Package")
library(MyStat302Package)
```

## Use

The vignette demonstrates example usage of all main functions. You can see the vignette by using the following code:

``` r
library(MyStat302Package)
# Use this to view the vignette in the MyStat302Package HTML help
help(package = "MyStat302Package", help_type = "html")
# Use this to view the vignette as an isolated HTML file
utils::browseVignettes(package = "MyStat302Package")
```

