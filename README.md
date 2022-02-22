
<!-- README.md is generated from README.Rmd. Please edit that file -->

# XikisPackage

<!-- badges: start -->
<!-- badges: end -->

The goal of XikisPackage is to …

## Installation

You can install the development version of XikisPackage like so:

``` r
remotes::install_github(repo = 'Shaunson26/XikisPackage')
```

## Functions

``` r
library(XikisPackage)
```

### Split data into columns

``` r
tmp <- data.frame(cat = c('ABC', 'BCA', 'CAB', '', 'AXC', '12345', NA, '1'))

split_column(tmp$cat, split = 'A')
#>      V1   V2
#> 1         BC
#> 2    BC <NA>
#> 3     C    B
#> 4  <NA> <NA>
#> 5         XC
#> 6 12345 <NA>
#> 7  <NA> <NA>
#> 8     1 <NA>
split_column(tmp$cat, split = '')
#>     V1   V2   V3   V4   V5
#> 1    A    B    C <NA> <NA>
#> 2    B    C    A <NA> <NA>
#> 3    C    A    B <NA> <NA>
#> 4 <NA> <NA> <NA> <NA> <NA>
#> 5    A    X    C <NA> <NA>
#> 6    1    2    3    4    5
#> 7 <NA> <NA> <NA> <NA> <NA>
#> 8    1 <NA> <NA> <NA> <NA>
```
