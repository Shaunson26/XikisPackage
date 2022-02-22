
<!-- README.md is generated from README.Rmd. Please edit that file -->

# XikisPackage

<!-- badges: start -->
<!-- badges: end -->

The goal of XikisPackage is to …

## Installation

You can install the development version of XikisPackage like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Functions

``` r
#library(XikisPackage)
```

### Split data into columns

``` r
tmp <- data.frame(cat = c('ABC', 'BCA', 'CAB', '', 'AXC', '12345', NA, '1'))

split_column(tmp$cat, split = 'A')
split_column(tmp$cat, split = '')
```
